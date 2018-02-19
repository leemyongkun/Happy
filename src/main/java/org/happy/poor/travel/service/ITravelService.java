package org.happy.poor.travel.service;

import java.util.HashMap;

public interface ITravelService {
	public HashMap<String,Object> list(int offset, int limit);
}
