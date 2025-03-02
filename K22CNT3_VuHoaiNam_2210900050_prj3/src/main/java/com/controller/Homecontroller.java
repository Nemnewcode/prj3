package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dao.MovieDao;
import com.model.Movie;

@Controller
public class Homecontroller {

    @Autowired
    private MovieDao movieDao;

    @GetMapping("/")
    public String home(Model model) {
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);
        return "index";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; 
    }
}
