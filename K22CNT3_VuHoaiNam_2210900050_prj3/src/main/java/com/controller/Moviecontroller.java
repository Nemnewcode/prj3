package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dao.MovieDao;
import com.model.Movie;

@Controller
public class Moviecontroller {

    @Autowired
    private MovieDao movieDao;

    @GetMapping("/movies")
    public String listMovies(Model model) {
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);
        return "movies"; // Trả về file movies.jsp
    }
}
