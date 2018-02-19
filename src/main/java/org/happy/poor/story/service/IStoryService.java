package org.happy.poor.story.service;

import java.util.HashMap;

public interface IStoryService {
	public HashMap<String,Object> list(int offset, int limit);
}
