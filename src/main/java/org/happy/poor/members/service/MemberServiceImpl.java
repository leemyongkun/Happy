package org.happy.poor.members.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.happy.poor.common.util.PagingUtil;
import org.happy.poor.config.AppEnvConfig;
import org.happy.poor.members.dao.IMemberDao;
import org.happy.poor.members.model.MemberInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service
public class MemberServiceImpl implements IMemberService {
	
	@Autowired	IMemberDao memberImpl;
	@Autowired	AppEnvConfig appEnvConfig;
	//@Autowired	BCryptPasswordEncoder BcPassword;
	
	
	@Override
	public int getMemberTotalCount() {
		return memberImpl.memberTotalCount();
	}

	@Override
	public ArrayList<MemberInfoVo> selectAll(int limit, int offset) {
		
		HashMap<String, Integer> limitVal = new HashMap<String, Integer>();
		limitVal.put("limit", limit);
		limitVal.put("offset", offset);

		return memberImpl.selectAll(limitVal);
	}

	@Override
	public String setPageLinks(int limit, int totalCount, int offset, int DEFAULT_BUNDLE_COUNT) {
		return PagingUtil.getPageLinks(limit, totalCount, offset, PagingUtil.DEFAULT_BUNDLE_COUNT);
	}

	@Override
	public void deleteMemberAndAuthority(String id) {
		memberImpl.deleteMember(id);
		memberImpl.deleteAuthorityForMember(id);
	}

	@Override
	public HashMap<String,String> selectMember(String id) {
		return memberImpl.selectMember(id);
		
	}


	@Override
	public void insertMember(MemberInfoVo memberInfoVo) {
		memberInfoVo.setFilename(saveThumbnail(memberInfoVo));
		memberInfoVo.setPassword(encodePassword(memberInfoVo.getPassword()));
		memberImpl.insertMember(memberInfoVo);	
		
	}
	
	@Override
	public String saveThumbnail(MemberInfoVo memberInfoVo) {
		MultipartFile thumbnail = memberInfoVo.getThumbnail();
		String filename = null;
		if (!thumbnail.getOriginalFilename().equals("")) {
			filename = memberInfoVo.getID();
			memberInfoVo.setFilename(filename);
			try {
				// 1. FileOutputStream 사용
				// byte[] fileData = file.getBytes();
				// FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
				// output.write(fileData);

				// 2. File 사용
				File file = new File(appEnvConfig.getAttachFileUploadPath() + File.separator +"profile" + File.separator + filename);
				thumbnail.transferTo(file);
			} catch (IOException e) {
				e.printStackTrace();
			} finally {

			}
		}

		return filename;
	}

	@Override
	public String encodePassword(String password) {
		return "";
		//return BcPassword.encode(password);
	}

	@Override
	public void insertAuthorityForMember(MemberInfoVo memberInfoVo) {
		HashMap<String, String> memberAuthorityInfo = new HashMap<String, String>();
		memberAuthorityInfo.put("id", memberInfoVo.getID());
		memberAuthorityInfo.put("authority", memberInfoVo.getAuthority());
		memberImpl.insertAuthorityForMember(memberAuthorityInfo);		
	}


	
}
