package com.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session) {
        // Kiểm tra quyền admin
        String role = (String) session.getAttribute("role");
        if (!"admin".equals(role)) {
            return "redirect:/index.jsp"; // Nếu không phải admin, chuyển hướng về trang chính
        }

        return "admin/dashboard"; // Trả về trang dashboard.jsp trong /WEB-INF/views/admin/
    }
    
}
