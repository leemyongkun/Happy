package org.happy.poor.members.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.happy.poor.members.model.MemberInfoVo;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MemberDaoImpl implements IMemberDao {
	
	/*@Autowired(required=true)
	SqlSessionTemplate sql;*/
	
	
	@Override
	public ArrayList<MemberInfoVo> selectAll(HashMap<String,Integer> limit) {
		return new ArrayList<MemberInfoVo>();
		//return  sql.getMapper(IMemberDao.class).selectAll(limit);
	}

	@Override
	public HashMap<String,String> selectMember(String id) {
		return new HashMap<String, String>();
		//return  sql.getMapper(IMemberDao.class).selectMember(id);
	}

	@Override
	public void insertMember(MemberInfoVo memberInfoVo) {
		// sql.getMapper(IMemberDao.class).insertMember(memberInfoVo);
	}
	
	@Override
	public void updateMember(MemberInfoVo memberInfoVo) {

	}


	@Override
	public void insertAuthorityForMember(HashMap<String,String> memberAuthorityInfo) {
		 //sql.getMapper(IMemberDao.class).insertAuthorityForMember(memberAuthorityInfo);
	}

	@Override
	public void deleteAuthorityForMember(String id) {
		// sql.getMapper(IMemberDao.class).deleteAuthorityForMember(id);
	}

	@Override
	public void deleteMember(String id) {
		// sql.getMapper(IMemberDao.class).deleteMember(id);
	}

	@Override
	public int memberTotalCount() {
		return 0;
		//return  sql.getMapper(IMemberDao.class).memberTotalCount();
	}

	

}
