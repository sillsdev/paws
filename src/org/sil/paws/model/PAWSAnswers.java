/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws.model;

import org.w3c.dom.Document;

/**
 * @author Andy Black
 *
 */
// N.B.: This is in the org.sil.paws.model package, but because there are at
// least 1640 distinct objects in the PAWS answer file (not to mention the
// large number of attributes/properties each object has), we use an XML DOM.
// The amount of work required to model this in a correct MVC approach is not
// worth the effort.
public class PAWSAnswers {

	Document answersDOM;

	public PAWSAnswers() {
		super(); 
	}

	public PAWSAnswers(Document answersDOM) {
		super();
		this.answersDOM = answersDOM;
	}

	public Document getAnswersDOM() {
		return answersDOM;
	}

	public void setAnswersDOM(Document answersDOM) {
		this.answersDOM = answersDOM;
	}
	
}
