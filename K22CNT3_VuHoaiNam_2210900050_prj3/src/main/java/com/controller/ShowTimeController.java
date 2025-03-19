package com.controller;


import com.dao.ShowTimeDao;
import com.model.ShowTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ShowTimeController {
	 
	@Autowired
	    private ShowTimeDao showtimeDao;

    @GetMapping("/showtimes")
    public String showShowtimes(Model model) {
        List<ShowTime> showtimes = showtimeDao.getAllShowtimes();
        model.addAttribute("showtimes", showtimes);
        return "showtimes";
    }
}
