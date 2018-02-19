package org.happy.poor.story.dao;

import java.util.ArrayList;

import org.happy.poor.story.model.StoryInfoVo;

public interface IStoryDao {
	ArrayList<StoryInfoVo> list(int limit, int offset);
}
