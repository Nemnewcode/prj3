package com.dao;

import com.model.Ticket;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class TicketDao {
    private final JdbcTemplate jdbcTemplate;

    public TicketDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Ticket> getAllTickets() {
        String sql = "SELECT id, user_id AS userId, showtime_id AS showtimeId, seat_id AS seatId, status, booking_date AS bookingDate FROM tickets";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Ticket.class));
    }


    // Đặt vé mới
    public int bookTicket(int userId, int showtimeId, int seatId) {
        String sql = "INSERT INTO tickets (user_id, showtime_id, seat_id, status) VALUES (?, ?, ?, 'BOOKED')";
        return jdbcTemplate.update(sql, userId, showtimeId, seatId);
    }
}
