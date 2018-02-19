package org.happy.poor.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;

/**
 * net.siriussoft.uae.common.util.DigestUtil
 * 
 * @project UAE-Front-eService
 * @author Siriussoft. Co
 * @create 2015.01.06 14:54:06
 * @version
 */
public class DigestUtil {

	/**
	 * Convert character string using MD5 algorithm
	 * 
	 * @param str
	 * @return
	 */
	public static String getStringToMD5(String str) {
		String MD5;
		str += DateUtil.getTodayTypeLong();

		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			MD5 = sb.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			MD5 = null;
		}

		return MD5;
	}

	
}
