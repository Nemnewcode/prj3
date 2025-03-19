package com.dao;

import com.model.Seat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class SeatDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public SeatDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private RowMapper<Seat> seatRowMapper = (rs, rowNum) -> new Seat(
        rs.getInt("id"),
        rs.getInt("theater_id"),
        rs.getString("seat_number"),
        rs.getString("type")
    );

    public List<Seat> getAllSeats() {
        String sql = "SELECT * FROM seats";
        return jdbcTemplate.query(sql, seatRowMapper);
    }

    public List<Seat> getSeatsByTheater(int theaterId) {
        String sql = "SELECT * FROM seats WHERE theater_id = ?";
        return jdbcTemplate.query(sql, seatRowMapper, theaterId);
    }
}
