package my.testtask;

import my.testtask.domain.entities.User;
import my.testtask.domain.repositories.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.Date;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = CrudTestTaskApplication.class)
@WebAppConfiguration
public class CrudTestTaskApplicationTests {

	@Autowired
	UserRepository userRepository;

	@Test
	public void saveLoadUserTest() {
		User user = new User();
		user.setName("admin");
		user.setAge(18);
		user.setAdmin(true);

		userRepository.save(user);
		assertNotNull(user.getId());
		assertNotNull(user.getCreatedDate());

		User loadedUser = userRepository.findOne(user.getId());
		assertEquals(user.getName(), loadedUser.getName());

		userRepository.delete(user);
	}

}
