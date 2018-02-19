package org.happy.poor.members.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.happy.poor.members.model.MemberInfoVo;

public interface IMemberDao {
	ArrayList<MemberInfoVo> selectAll(HashMap<String,Integer> limit);
	HashMap<String,String> selectMember(String id);
	void updateMember(MemberInfoVo memberInfoVo);
	void insertMember(MemberInfoVo memberInfoVo);
	void deleteMember(String id);
	void insertAuthorityForMember(HashMap<String,String> memberAuthorityInfo);
	void deleteAuthorityForMember(String id);
	int memberTotalCount();
	
}
