package net.gh.complianceDashboard.controller;

import javax.servlet.http.HttpSession;

import net.gh.complianceDashboard.model.UserModel;
import net.gh.complianceDashboardBackend.dao.UserDao;
import net.gh.complianceDashboardBackend.dto.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalController {
	/**
	 * @author anurag ghosh
	 */

	@Autowired
	private UserDao userDao;

	@Autowired
	private HttpSession session;

	private UserModel userModel = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			Authentication authentication = SecurityContextHolder.getContext()
					.getAuthentication();
			User user = userDao.getUserByEmailId(authentication.getName());
			if (user != null) {
				userModel = new UserModel();
				userModel.setId(user.getId());
				userModel.setEmail(user.getEmail());
				userModel.setFullName(user.getName());
				userModel.setRole(user.getRole());
				session.setAttribute("userModel", userModel);
				return userModel;
			}
		}
		return (UserModel) session.getAttribute("userModel");
	}
}
