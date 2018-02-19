package org.happy.poor.common.security;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.happy.poor.members.model.MemberInfoVo;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;

public class CustomJdbcDaoImpl extends JdbcDaoImpl{

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String id = username;
		
		List<UserDetails> users = loadUsersByUsername(id);
	
		if (users.size() == 0) {
			logger.debug("Query returned no results for user '" + id + "'");
		
			UsernameNotFoundException ue = new UsernameNotFoundException(messages.getMessage("JdbcDaoImpl.notFound", new Object[]{id}, "Username {0} not found"));
			throw ue;
		}
		
		MemberInfoVo user = (MemberInfoVo)users.get(0); // contains no GrantedAuthority[]
		
		Set<GrantedAuthority> dbAuthsSet = new HashSet<GrantedAuthority>();
		
		if (getEnableAuthorities()) {
			dbAuthsSet.addAll(loadUserAuthorities(user.getID()));
		}
		
		if (getEnableGroups()) {
			dbAuthsSet.addAll(loadGroupAuthorities(user.getID()));
		}
		
		List<GrantedAuthority> dbAuths = new ArrayList<GrantedAuthority>(dbAuthsSet);
		user.setAuthorities(dbAuths);
		/*System.out.println("size : "+dbAuths.size());
		for(int i=0;i<dbAuths.size();i++){
			System.out.println(dbAuths.get(i).getAuthority());
		}*/
		
		if (dbAuths.size() == 0) {
		logger.debug("User '" + id + "' has no authorities and will be treated as 'not found'");
		
		UsernameNotFoundException ue = new UsernameNotFoundException(
					messages.getMessage("JdbcDaoImpl.noAuthority", new Object[] {id}, "User {0} has no GrantedAuthority"));
					throw ue;
		}
		
		return user;
	}
	
	@Override
	protected List<UserDetails> loadUsersByUsername(String id) {
			return getJdbcTemplate().query(getUsersByUsernameQuery(), new String[] {id}, new RowMapper<UserDetails>() {
				public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
				String id = rs.getString(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				return new MemberInfoVo(id, password, name, AuthorityUtils.NO_AUTHORITIES);
			}
			
		});
	}
	
	@Override
	protected List<GrantedAuthority> loadUserAuthorities(String id) {
		
		return getJdbcTemplate().query(getAuthoritiesByUsernameQuery(), new String[] {id}, new RowMapper<GrantedAuthority>() {
			public GrantedAuthority mapRow(ResultSet rs, int rowNum) throws SQLException {
				String roleName = getRolePrefix() + rs.getString(1);
				return new SimpleGrantedAuthority(roleName);
			}
		});
	}
	
	@Override
	protected List<GrantedAuthority> loadGroupAuthorities(String id) {
		return super.loadGroupAuthorities(id);
	}
}
