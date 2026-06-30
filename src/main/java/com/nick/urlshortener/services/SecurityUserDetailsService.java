package com.nick.urlshortener.services;

import com.nick.urlshortener.repositories.UserRepository;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.nick.urlshortener.entities.User;

import java.util.List;

@Service
public class SecurityUserDetailsService implements UserDetailsService {
    private final UserRepository userRepository;
    public SecurityUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(username).orElseThrow(()
                -> new UsernameNotFoundException("User email not found: "+username));
        return new org.springframework.security.core.userdetails.User
                (user.getEmail(), user.getPassword(),
                        List.of(new SimpleGrantedAuthority(user.getRole().name())));
    }

}
