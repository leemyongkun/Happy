package org.happy.poor.members.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.happy.poor.members.model.IMemberInfo;
import org.happy.poor.members.model.MemberInfoVo;

public interface IMemberService {
	public int getMemberTotalCount();
	public ArrayList<MemberInfoVo> selectAll(int limit, int offset);
	public HashMap<String,String> selectMember(String id);
	public String setPageLinks(int limit, int totalCount, int offset, int DEFAULT_BUNDLE_COUNT);
	public void deleteMemberAndAuthority(String id);
	
	public void insertMember(MemberInfoVo memberInfoVo);
	public String saveThumbnail(MemberInfoVo memberInfoVo);
	public String encodePassword(String password);
	
	public void insertAuthorityForMember(MemberInfoVo memberInfoVo);
}
