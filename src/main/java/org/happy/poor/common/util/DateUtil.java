package org.happy.poor.common.util;

import java.util.Calendar;

public class DateUtil {
	
	public static String getTodayTypeLong() {
		return Long.toString(Calendar.getInstance().getTimeInMillis());
	}
	
}
