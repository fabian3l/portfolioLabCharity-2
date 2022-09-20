package pl.coderslab.charity.service.security;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.model.security.Role;
import pl.coderslab.charity.model.security.User;
import pl.coderslab.charity.repository.security.RoleRepository;
import pl.coderslab.charity.repository.security.UserRepository;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService{

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public User findByUsername(String name) {
        return userRepository.findByUsername(name);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnable(1);
        Role userRole = roleRepository.findByName("USER_ROLE");
//        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        user.setRoles(Collections.singletonList(userRole));
        userRepository.save(user);
    }
}
