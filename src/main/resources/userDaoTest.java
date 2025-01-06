import junit.framework.TestCase;
import dao.userDao;
import model.User;
import java.util.*;

import org.junit.jupiter.api.Test;

public class userDaoTest extends TestCase {
	
	userDao UserDao=new userDao();
	
	@Test
	void selectUser_testCase1()
	{
		User user=UserDao.selectUser(1);
		assertNotNull(user);
		
		
		
	}
	
	@Test
	void selectAllUsers_testCase2()
	{
		List<User> users=UserDao.selectAllUsers();
		assertTrue(users.size()>0);
	}
	
	

}
