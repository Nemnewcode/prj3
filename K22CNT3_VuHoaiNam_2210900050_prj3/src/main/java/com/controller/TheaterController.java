package com.controller;

import com.dao.MovieDao;
import com.dao.TheaterDao;
import com.model.Theater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/theaters")
public class TheaterController {
    
	@Autowired
    private TheaterDao theaterDao;

    // Hiển thị danh sách rạp chiếu phim
    @GetMapping
    public String listTheaters(Model model) {
        List<Theater> theaters = theaterDao.getAllTheaters();
        model.addAttribute("theaters", theaters);
        return "theaters";
    }
}
