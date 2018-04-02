/**
 * Copyright (c) 2014 ControlsFX
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 *     * Neither the name of ControlsFX, any associated website, nor the
 * names of its contributors may be used to endorse or promote products
 * derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL CONTROLSFX BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package org.controlsfx.dialog;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.function.Predicate;

import javafx.application.Platform;
import javafx.beans.binding.DoubleBinding;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.transformation.FilteredList;
import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ColorPicker;
import javafx.scene.control.Dialog;
import javafx.scene.control.DialogPane;
import javafx.scene.control.Label;
import javafx.scene.control.ListCell;
import javafx.scene.control.ListView;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;
import javafx.scene.layout.RowConstraints;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;
import javafx.scene.text.FontPosture;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.util.Callback;

public class FontSelectorDialogWithColor extends Dialog<Font> {

	private FontPanel fontPanel;
	private Font defaultFont;
	private String dialogTitle;
	private String dialogHeaderText;

	public FontSelectorDialogWithColor(Font defaultFont, Color defaultColor, ResourceBundle bundle) {
		dialogTitle = bundle.getString("fontselector.dialogtitle");
		dialogHeaderText = bundle.getString("fontselector.dialogheadertext");

		fontPanel = new FontPanel(bundle, defaultColor);
		fontPanel.setFont(defaultFont);

		this.defaultFont = defaultFont;

		setResultConverter(dialogButton -> dialogButton == ButtonType.OK ? fontPanel.getFont()
				: null);

		final DialogPane dialogPane = getDialogPane();

		setTitle(dialogTitle);
		dialogPane.setHeaderText(dialogHeaderText);
		dialogPane.getStyleClass().add("font-selector-dialog");
		dialogPane.getStylesheets().add(
				FontSelectorDialogWithColor.class.getResource("dialogs.css").toExternalForm());
		dialogPane.getButtonTypes().addAll(ButtonType.OK, ButtonType.CANCEL);
		dialogPane.setContent(fontPanel);
	}
	
	public Color getColor() {
		return fontPanel.getColor();
	}

	/**************************************************************************
	 * 
	 * Support classes
	 * 
	 **************************************************************************/

	/**
	 * Font style as combination of font weight and font posture. Weight does
	 * not have to be there (represented by null) Posture is required, null
	 * posture is converted to REGULAR
	 */
	private static class FontStyle implements Comparable<FontStyle> {

		private FontPosture posture;
		private FontWeight weight;

		public FontStyle(FontWeight weight, FontPosture posture) {
			this.posture = posture == null ? FontPosture.REGULAR : posture;
			this.weight = weight;
		}

		public FontStyle() {
			this(null, null);
		}

		public FontStyle(String styles) {
			this();
			String[] fontStyles = (styles == null ? "" : styles.trim().toUpperCase()).split(" ");
			for (String style : fontStyles) {
				FontWeight w = FontWeight.findByName(style);
				if (w != null) {
					weight = w;
				} else {
					FontPosture p = FontPosture.findByName(style);
					if (p != null)
						posture = p;
				}
			}
		}

		public FontStyle(Font font) {
			this(font.getStyle());
		}

		public FontPosture getPosture() {
			return posture;
		}

		public FontWeight getWeight() {
			return weight;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((posture == null) ? 0 : posture.hashCode());
			result = prime * result + ((weight == null) ? 0 : weight.hashCode());
			return result;
		}

		@Override
		public boolean equals(Object that) {
			if (this == that)
				return true;
			if (that == null)
				return false;
			if (getClass() != that.getClass())
				return false;
			FontStyle other = (FontStyle) that;
			if (posture != other.posture)
				return false;
			if (weight != other.weight)
				return false;
			return true;
		}

		private static String makePretty(Object o) {
			String s = o == null ? "" : o.toString();
			if (!s.isEmpty()) {
				s = s.replace("_", " ");
				s = s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();
			}
			return s;
		}

		@Override
		public String toString() {
			return String.format("%s %s", makePretty(weight), makePretty(posture)).trim();
		}

		private <T extends Enum<T>> int compareEnums(T e1, T e2) {
			if (e1 == e2)
				return 0;
			if (e1 == null)
				return -1;
			if (e2 == null)
				return 1;
			return e1.compareTo(e2);
		}

		@Override
		public int compareTo(FontStyle fs) {
			int result = compareEnums(weight, fs.weight);
			return (result != 0) ? result : compareEnums(posture, fs.posture);
		}

	}

	private static class FontPanel extends GridPane {
		private static final double HGAP = 10;
		private static final double VGAP = 5;

		private static final Predicate<Object> MATCH_ALL = new Predicate<Object>() {
			@Override
			public boolean test(Object t) {
				return true;
			}
		};

		private static final Double[] fontSizes = new Double[] { 3d, 4d, 5d, 6d, 7d, 8d, 9d, 10d,
				11d, 12d, 13d, 14d, 15d, 16d, 17d, 18d, 19d, 20d, 21d, 22d, 23d, 24d, 25d, 26d,
				27d, 28d, 29d, 30d, 31d, 32d, 33d, 34d, 35d, 36d, 37d, 38d, 39d, 40d, 41d, 42d,
				43d, 44d, 45d, 46d, 47d, 48d, 49d, 50d, 51d, 52d, 53d, 54d, 55d, 56d, 57d, 58d,
				59d, 60d, 61d, 62d, 63d, 64d, 65d, 66d, 67d, 68d, 69d, 70d, 71d, 72d };

		private static List<FontStyle> getFontStyles(String fontFamily) {
			Set<FontStyle> set = new HashSet<>();
			for (String f : Font.getFontNames(fontFamily)) {
				set.add(new FontStyle(f.replace(fontFamily, "")));
			}

			List<FontStyle> result = new ArrayList<>(set);
			Collections.sort(result);
			return result;

		}

		private final FilteredList<String> filteredFontList = new FilteredList<>(
				FXCollections.observableArrayList(Font.getFamilies()), MATCH_ALL);
		private final FilteredList<FontStyle> filteredStyleList = new FilteredList<>(
				FXCollections.<FontStyle> observableArrayList(), MATCH_ALL);
		private final FilteredList<Double> filteredSizeList = new FilteredList<>(
				FXCollections.observableArrayList(fontSizes), MATCH_ALL);

		private final ListView<String> fontListView = new ListView<>(filteredFontList);
		private final ListView<FontStyle> styleListView = new ListView<>(filteredStyleList);
		private final ListView<Double> sizeListView = new ListView<>(filteredSizeList);
		private final Text sample = new Text("Sample");
		private Color color = Color.BLACK;

		public FontPanel(ResourceBundle bundle, Color defaultColor) {
			color = defaultColor;
			sample.setText(bundle.getString("fontselector.sample"));
			setHgap(HGAP);
			setVgap(VGAP);
			setPrefSize(500, 300);
			setMinSize(500, 300);

			ColumnConstraints c0 = new ColumnConstraints();
			c0.setPercentWidth(60);
			ColumnConstraints c1 = new ColumnConstraints();
			c1.setPercentWidth(25);
			ColumnConstraints c2 = new ColumnConstraints();
			c2.setPercentWidth(15);
			getColumnConstraints().addAll(c0, c1, c2);

			RowConstraints r0 = new RowConstraints();
			r0.setVgrow(Priority.NEVER);
			RowConstraints r1 = new RowConstraints();
			r1.setVgrow(Priority.NEVER);
			RowConstraints r2 = new RowConstraints();
			r2.setFillHeight(true);
			r2.setVgrow(Priority.NEVER);
			RowConstraints r3 = new RowConstraints();
			r3.setPrefHeight(250);
			r3.setVgrow(Priority.NEVER);
			getRowConstraints().addAll(r0, r1, r2, r3);

			// layout hello.dialog
			add(new Label(bundle.getString("fontselector.font")), 0, 0);
			// fontSearch.setMinHeight(Control.USE_PREF_SIZE);
			// add( fontSearch, 0, 1);
			add(fontListView, 0, 1);
			fontListView.setCellFactory(new Callback<ListView<String>, ListCell<String>>() {
				@Override
				public ListCell<String> call(ListView<String> listview) {
					return new ListCell<String>() {
						@Override
						protected void updateItem(String family, boolean empty) {
							super.updateItem(family, empty);

							if (!empty) {
								setFont(Font.font(family));
								setText(family);
							} else {
								setText(null);
							}
						}
					};
				}
			});

			fontListView.setOnKeyTyped(new EventHandler<KeyEvent>() {

				@Override
				public void handle(KeyEvent event) {
					String charTyped = event.getCharacter();
					List<String> matches = fontListView.getItems().filtered(f -> f.startsWith(charTyped));
					if (matches.size() == 0) {
						String upperCase = charTyped.toUpperCase(bundle.getLocale());
						matches = fontListView.getItems().filtered(f -> f.startsWith(upperCase));
					}
					if (matches.size() > 0) {
						String sFirst = matches.get(0);
						fontListView.getSelectionModel().select(sFirst);
						fontListView.scrollTo(sFirst);
					}
				}
			});

			ChangeListener<Object> sampleRefreshListener = new ChangeListener<Object>() {
				@Override
				public void changed(ObservableValue<? extends Object> arg0, Object arg1, Object arg2) {
					refreshSample();
				}
			};

			fontListView.selectionModelProperty().get().selectedItemProperty()
					.addListener(new ChangeListener<String>() {

						@Override
						public void changed(ObservableValue<? extends String> arg0, String arg1,
								String arg2) {
							String fontFamily = listSelection(fontListView);
							styleListView.setItems(FXCollections
									.<FontStyle> observableArrayList(getFontStyles(fontFamily)));
							refreshSample();
						}
					});

			add(new Label(bundle.getString("fontselector.style")), 1, 0);
			// postureSearch.setMinHeight(Control.USE_PREF_SIZE);
			// add( postureSearch, 1, 1);
			add(styleListView, 1, 1);
			styleListView.selectionModelProperty().get().selectedItemProperty()
					.addListener(sampleRefreshListener);

			add(new Label(bundle.getString("fontselector.size")), 2, 0);
			// sizeSearch.setMinHeight(Control.USE_PREF_SIZE);
			// add( sizeSearch, 2, 1);
			add(sizeListView, 2, 1);
			sizeListView.selectionModelProperty().get().selectedItemProperty()
					.addListener(sampleRefreshListener);

			final double height = 45;
			final DoubleBinding sampleWidth = new DoubleBinding() {
				{
					bind(fontListView.widthProperty(), styleListView.widthProperty(),
							sizeListView.widthProperty());
				}

				@Override
				protected double computeValue() {
					return fontListView.getWidth() + styleListView.getWidth()
							+ sizeListView.getWidth() + 3 * HGAP;
				}
			};
			StackPane sampleStack = new StackPane(sample);
			sampleStack.setAlignment(Pos.CENTER_LEFT);
			sampleStack.setMinHeight(height);
			sampleStack.setPrefHeight(height);
			sampleStack.setMaxHeight(height);
			sampleStack.prefWidthProperty().bind(sampleWidth);
			Rectangle clip = new Rectangle(0, height);
			clip.widthProperty().bind(sampleWidth);
			sampleStack.setClip(clip);
			add(sampleStack, 0, 3, 1, 3);
			
			 ColorPicker colorPicker = new ColorPicker(defaultColor);
			 colorPicker.setOnAction(new EventHandler() {
			     public void handle(Event t) {
			         color = colorPicker.getValue();
			     }
			 });
			 colorPicker.setMinHeight(25);
			 colorPicker.setPrefWidth(100);
			 add(colorPicker, 0, 4, 4, 4);
		}

		public void setFont(final Font font) {
			final Font _font = font == null ? Font.getDefault() : font;
			if (_font != null) {
				selectInList(fontListView, _font.getFamily());
				selectInList(styleListView, new FontStyle(_font));
				selectInList(sizeListView, _font.getSize());
			}
		}

		public Color getColor() {
			return color;
		}

		public void setColor(Color color) {
			this.color = color;
		}

		public Font getFont() {
			try {
				FontStyle style = listSelection(styleListView);
				if (style == null) {
					return Font.font(listSelection(fontListView), listSelection(sizeListView));

				} else {
					return Font.font(listSelection(fontListView), style.getWeight(),
							style.getPosture(), listSelection(sizeListView));
				}

			} catch (Throwable ex) {
				return null;
			}
		}

		private void refreshSample() {
			sample.setFont(getFont());
		}

		private <T> void selectInList(final ListView<T> listView, final T selection) {
			Platform.runLater(new Runnable() {
				@Override
				public void run() {
					listView.getSelectionModel().select(selection);
					listView.scrollTo(selection);
				}
			});
		}

		private <T> T listSelection(final ListView<T> listView) {
			return listView.selectionModelProperty().get().getSelectedItem();
		}
	}
}
