package com.beingjavaguys.service;


import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashMap;

// тут  можно из бд грузить данные

@Service
public class UserManager {
    private HashMap<String, User> users;

    public UserManager() {
        users = new HashMap<String, User>();
        users.put("bob", new User("bob", "2", "ROLE_ADMIN"));
    }

    public User getUser(String username) throws UsernameNotFoundException {
        if( !users.containsKey( username ) ){
            throw new UsernameNotFoundException( username + " not found" );
        }

        return users.get( username );
    }
}