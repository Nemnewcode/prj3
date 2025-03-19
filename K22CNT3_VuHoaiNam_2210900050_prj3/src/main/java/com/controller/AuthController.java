package com.controller;

import com.dao.UserDao;
import com.model.User;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthController {
    private final UserDao userDao;

    @Autowired
    public AuthController(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
        try {
            User user = userDao.loginUser(username, password);
            if (user != null) {
                session.setAttribute("user", user); // Lưu toàn bộ User vào session
                if ("ADMIN".equals(user.getRole())) {
                    return "redirect:/admin/dashboard"; // Admin vào dashboard
                } else if ("USER".equals(user.getRole())) {
                    return "redirect:/movies"; // User vào trang danh sách phim
                } else {
                    return "redirect:/index.jsp"; // Role không hợp lệ
                }
            } else {
                model.addAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
                return "login";
            }
        } catch (Exception e) {
            model.addAttribute("error", "Đã xảy ra lỗi trong quá trình đăng nhập!");
            return "login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}