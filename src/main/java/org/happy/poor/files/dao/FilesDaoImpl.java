package org.happy.poor.files.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FilesDaoImpl implements IFilesDao {
	
/*	@Autowired(required=true)
	SqlSessionTemplate sql;*/
	
	/*@Override
	public ArrayList<MemberInfoVo> selectAll(HashMap<String,Integer> limit) {
		return sql.getMapper(IMemberDao.class).selectAll(limit);
	}*/
	
	@Override
	public void insert(HashMap<String,String> fileInfo) {
		//sql.getMapper(IFilesDao.class).insert(fileInfo);
		
	}

	@Override
	public void delete(HashMap<String,String> fileInfo) {
	//	sql.getMapper(IFilesDao.class).delete(fileInfo);
	}

	@Override
	public  List<HashMap<String,Object>> selectAll(String id) {
		return null;
		//return sql.getMapper(IFilesDao.class).selectAll(id);
	}

}
