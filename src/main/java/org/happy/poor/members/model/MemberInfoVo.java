package org.happy.poor.members.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

//@JsonSerialize(using=DateSerializer.class)
public class MemberInfoVo implements IMemberInfo {
		 
	
	private static final long serialVersionUID = -4086869747130410600L;
	private Set<GrantedAuthority> authorities;	// 계정이 가지고 있는 권한 목록
	
	private String id;			// 계정 아이디
	private String password;	// 계정 비밀번호
	private String name;		// 계정 사용자의 이름
	private String nickname;
	private String email;
	private String phone;
	private String sex;
	private String authority;
	private String filename;
	private MultipartFile thumbnail;
	


	public MemberInfoVo(){}
	
	public MemberInfoVo(String id, String password, String name, Collection<? extends GrantedAuthority> authorities){
		this.id = id;
		this.password = password;
		this.name = name;
		this.authorities = Collections.unmodifiableSet(sortAuthorities(authorities));
	}
	
	
	/* 추가 내용 : START*/
	@Override
	public String getName(){	
		return this.name;
	}
	@Override
	public String getID(){
		return getUsername();
	}
	
	
	@Override
	public String getNickname() {
		return this.nickname;
	}


	@Override
	public String getEmail() {
		return this.email;
	}


	@Override
	public String getPhone() {
		return this.phone;
	}


	@Override
	public String getSex() {
		return this.sex;
	}
	
	/* 추가 내용 : END*/

	public void setAuthorities(Set<GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	
	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return id;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public void setId(String id) {
		this.id = id;
	}

	@Override
	public void setPassword(String password) {
		this.password =  password;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String getAuthority() {
		return this.authority;
	}

	@Override
	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public MultipartFile getThumbnail() {
		return thumbnail;
	}

	@Override
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	@Override
	public String getFilename() {
		return filename;
	}

	@Override
	public void setFilename(String filename) {
		this.filename = filename;
	}

	
	private static SortedSet<GrantedAuthority> sortAuthorities(Collection<? extends GrantedAuthority> authorities) {
		Assert.notNull(authorities, "Cannot pass a null GrantedAuthority collection");
		// Ensure array iteration order is predictable (as per UserDetails.getAuthorities() contract and SEC-717)
		SortedSet<GrantedAuthority> sortedAuthorities = new TreeSet<GrantedAuthority>(new AuthorityComparator());
	
		for (GrantedAuthority grantedAuthority : authorities) {
			Assert.notNull(grantedAuthority, "GrantedAuthority list cannot contain any null elements");
			sortedAuthorities.add(grantedAuthority);
		}
		return sortedAuthorities;
	}
	
	private static class AuthorityComparator implements Comparator<GrantedAuthority>, Serializable {
	
		private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;

		public int compare(GrantedAuthority g1, GrantedAuthority g2) {
			// Neither should ever be null as each entry is checked before adding it to the set.
			// If the authority is null, it is a custom authority and should precede others.
			if (g2.getAuthority() == null) {
			return -1;
		}

		if (g1.getAuthority() == null) {
		return 1;
		}

			return g1.getAuthority().compareTo(g2.getAuthority());
		}
	}
	
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities){
		this.authorities = Collections.unmodifiableSet(sortAuthorities(authorities));
	}




	
}
