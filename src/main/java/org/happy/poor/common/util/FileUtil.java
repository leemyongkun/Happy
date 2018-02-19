package org.happy.poor.common.util;

import java.io.File;
import java.io.FileFilter;

/**
 * net.siriussoft.uae.common.util.FileUtil
 * 
 * @project UAE-Front-eService
 * @author Siriussoft. Co
 * @create 2015.01.06 15:12:06
 * @version
 */
public class FileUtil {

	/**
	 * Delete image file using id
	 * 
	 * @param path
	 * @param id
	 */
	

	public static void removeByID(String path, String id) {
	
		File file = new File(path);
		factorialFileTree(file, id);
		
		
	}

	private static void factorialFileTree(File file, String id) {
		
		file.listFiles(new FileFilter() {
			@Override
			public boolean accept(File file) {
				if (file.isDirectory()) {
					factorialFileTree(file, id);
				}else if (file.isFile()) {
					
					if (file.getName().equals(id)) {
						file.delete();
					}
				}
				return false;
			}
		});
		
		
		
	}
}
