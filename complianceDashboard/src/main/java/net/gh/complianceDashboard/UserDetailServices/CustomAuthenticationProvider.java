package net.gh.complianceDashboard.UserDetailServices;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import javax.naming.NamingException;

import net.gh.complianceDashboard.bluePageAuthentication.IntranetAuth.IntranetAuth;
import net.gh.complianceDashboardBackend.dao.UserDao;
import net.gh.complianceDashboardBackend.dto.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
@Service("customAuthenticationProvider")
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private UserDao userDao;

	@Override
	public Authentication authenticate(Authentication auth)
			throws AuthenticationException {
		String username = auth.getName();
		String password = auth.getCredentials().toString();

		User user = userDao.getUserByEmailId(username);
		boolean authenticationStatus = false;
		try {
			IntranetAuth intranetAuth = new IntranetAuth();
			authenticationStatus = intranetAuth.isLDAPUserWithUserEmail(
					username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (user != null && authenticationStatus) {
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority(user.getRole()));
			return new UsernamePasswordAuthenticationToken(username, password,
					authorities);
		} else {
			throw new BadCredentialsException(
					"External system authentication failed");
		}
	}

	@Override
	public boolean supports(Class<?> auth) {
		return auth.equals(UsernamePasswordAuthenticationToken.class);
	}
}