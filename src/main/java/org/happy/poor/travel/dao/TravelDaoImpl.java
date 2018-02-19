package org.happy.poor.travel.dao;

import java.util.ArrayList;

import org.happy.poor.travel.model.TravelInfoVo;
import org.springframework.stereotype.Repository;

@Repository
public class TravelDaoImpl implements ITravelDao{

	
/*	@Autowired(required=true)
	SqlSessionTemplate sql;*/
	
	
	@Override
	public ArrayList<TravelInfoVo> list(int offset, int limit) {
		return new ArrayList<TravelInfoVo>();
		//return sql.getMapper(ITravelDao.class).list(offset,limit);
	}

}
