package org.happy.poor.members.model;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.multipart.MultipartFile;

public interface IMemberInfo extends UserDetails{
	public String getName();
	public String getID();
	public String getNickname();
	public String getEmail();
	public String getPhone();
	public String getSex();
	public String getAuthority();
	public MultipartFile getThumbnail();
	public String getFilename();

	public void setPassword(String password);
	public void setName(String name);
	public void setId(String id);
	public void setNickname(String nickname);
	public void setEmail(String email);
	public void setPhone(String phone);
	public void setSex(String sex);
	public void setAuthority(String authority);
	public void setThumbnail(MultipartFile thumnail);
	public void setFilename(String filename);
}
