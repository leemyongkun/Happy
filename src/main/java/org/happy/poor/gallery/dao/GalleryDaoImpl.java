package org.happy.poor.gallery.dao;

import java.util.ArrayList;

import org.happy.poor.gallery.model.GalleryInfoVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDaoImpl implements IGalleryDao{

	/*@Autowired(required=true)
	SqlSessionTemplate sql;*/
	
	
	@Override
	public ArrayList<GalleryInfoVo> list(int limit, int offset) {
		return null;
		//return sql.getMapper(IGalleryDao.class).list(limit, offset);
	}

}
