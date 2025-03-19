package com.controller;

import com.dao.MovieDao;
import com.dao.SeatDao;
import com.model.Seat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller
public class SeatController {
	@Autowired
    private SeatDao seatDao;

    @GetMapping("/seats")
    public String listSeats(@RequestParam(name = "theaterId", required = false) Integer theaterId, Model model) {
        List<Seat> seats;
        if (theaterId != null) {
            seats = seatDao.getSeatsByTheater(theaterId);
        } else {
            seats = seatDao.getAllSeats();
        }
        model.addAttribute("seats", seats);
        return "seats";
    }
}
