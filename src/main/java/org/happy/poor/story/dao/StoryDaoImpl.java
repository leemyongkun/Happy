package org.happy.poor.story.dao;

import java.util.ArrayList;

import org.happy.poor.story.model.StoryInfoVo;
import org.springframework.stereotype.Repository;

@Repository
public class StoryDaoImpl implements IStoryDao{

	
	/*@Autowired(required=true)
	SqlSessionTemplate sql;*/
	
	
	@Override
	public ArrayList<StoryInfoVo> list(int offset, int limit) {
		return new ArrayList<StoryInfoVo>();
		//return sql.getMapper(IStoryDao.class).list(offset, limit);
	}

}
