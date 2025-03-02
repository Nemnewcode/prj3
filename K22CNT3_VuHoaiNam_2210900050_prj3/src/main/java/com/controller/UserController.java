package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
    
    @Autowired
    private UserDao userDao;

    // Hiển thị danh sách user
    @GetMapping("/users")
    public String listUsers(Model model) {
        List<User> users = userDao.getAllUsers();
        model.addAttribute("users", users);
        return "users"; // Trả về file users.jsp
    }

    // Xử lý thêm user
    @PostMapping("/addUser")
    public String addUser(@RequestParam String username, @RequestParam String password) {
        User user = new User(0, username, password);
        userDao.saveUser(user);
        return "redirect:/users";
    }
}
