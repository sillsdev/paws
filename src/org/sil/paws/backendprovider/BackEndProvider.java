// Copyright (c) 2018 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 
/**
 * 
 */
package org.sil.paws.backendprovider;

import java.io.File;


/**
 * @author Andy Black
 *
 */
public abstract class BackEndProvider {
    /**
     * Loads tree data from the backend storage. The current tree data will
     * be replaced.
     * 
     * @param file
     */
    public abstract void loadAnswersDataFromFile(File file);

    /**
     * Saves the current tree data to the backend storage.
     * 
     * @param file
     */
    public abstract void saveAnswersDataToFile(File file);

}
