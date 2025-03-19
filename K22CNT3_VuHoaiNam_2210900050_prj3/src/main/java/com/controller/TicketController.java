package com.controller;

import com.dao.TicketDao;
import com.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TicketController {
   

    @Autowired
    private  TicketDao ticketDao;
    

    // Hiển thị danh sách vé
    @GetMapping("/tickets")
    public String showTickets(Model model) {
        List<Ticket> tickets = ticketDao.getAllTickets();
        model.addAttribute("tickets", tickets);
        return "tickets";
    }

    // Xử lý đặt vé
    @PostMapping("/bookticket")
    public String bookTicket(@RequestParam int userId, @RequestParam int showtimeId, @RequestParam int seatId) {
        ticketDao.bookTicket(userId, showtimeId, seatId);
        return "redirect:/tickets";
    }
}
