package net.gh.complianceDashboardBackend.dao;

import java.util.List;

import net.gh.complianceDashboardBackend.dto.User;

public interface UserDao {

	User getUser(long id);

	User getUserByEmailId(String emailId);

	List<User> userLists();

	List<User> userListsByRole(String role);

	boolean addUser(User user);

	boolean updateUser(User user);

	boolean deleteUser(User user);

}
