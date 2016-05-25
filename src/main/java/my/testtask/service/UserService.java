package my.testtask.service;


import my.testtask.domain.entities.User;
import org.springframework.data.domain.Page;

public interface UserService {
    void saveUser(User user);

    void deleteUser(Integer id);

    User findUser(Integer id);

    Page<User> findAllUsers(Integer pageNumber);

    Iterable<User> findByName(String name);
}
