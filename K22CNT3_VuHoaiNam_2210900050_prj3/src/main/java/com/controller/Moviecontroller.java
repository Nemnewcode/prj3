package com.controller;

import com.dao.MovieDao;
import com.model.Movie;
import com.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class MovieController {

    @Autowired
    private MovieDao movieDao;

    @GetMapping("/movies")
    public String listMovies(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        List<Movie> movies = movieDao.getAllMovies();
        model.addAttribute("movies", movies);
        model.addAttribute("user", user);
        return "movies";
    }

    @GetMapping("/movies/add")
    public String showAddMovieForm(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            return "redirect:/login";
        }
        model.addAttribute("movie", new Movie());
        return "addmovie";
    }

    @PostMapping("/movies/add")
    public String addMovie(@RequestParam String title,
                           @RequestParam String description,
                           @RequestParam int duration,
                           @RequestParam String genre,
                           @RequestParam String releaseDate,
                           @RequestParam String posterUrl,
                           HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            return "redirect:/login";
        }
        Movie movie = new Movie(0, title, description, duration, genre, releaseDate, posterUrl);
        movieDao.addMovie(movie);
        return "redirect:/movies";
    }

    @GetMapping("/movies/edit")
    public String showEditMovieForm(@RequestParam int id, HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            return "redirect:/login";
        }
        Movie movie = movieDao.getMovieById(id);
        if (movie == null) {
            return "redirect:/movies";
        }
        model.addAttribute("movie", movie);
        return "editmovie";
    }

    @PostMapping("/movies/edit")
    public String editMovie(@ModelAttribute Movie movie, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            return "redirect:/login";
        }
        movieDao.updateMovie(movie);
        return "redirect:/movies";
    }

    @PostMapping("/movies/delete")
    public String deleteMovie(@RequestParam int id, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            return "redirect:/login";
        }
        movieDao.deleteMovie(id);
        return "redirect:/movies";
    }

    @GetMapping("/book-ticket")
    public String showBookTicketForm(@RequestParam int movieId, HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"USER".equals(user.getRole())) {
            return "redirect:/login";
        }
        Movie movie = movieDao.getMovieById(movieId);
        model.addAttribute("movie", movie);
        return "bookticket";
    }

    @PostMapping("/book-ticket")
    public String bookTicket(@RequestParam int movieId, @RequestParam int quantity, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null || !"USER".equals(user.getRole())) {
            return "redirect:/login";
        }
        // Logic đặt vé (có thể lưu vào database)
        return "redirect:/movies";
    }
}
