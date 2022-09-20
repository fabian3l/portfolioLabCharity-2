package pl.coderslab.charity.service.security;

import pl.coderslab.charity.model.security.User;

public interface UserService {

    User findByUsername(String name);
    void saveUser(User user);
}
