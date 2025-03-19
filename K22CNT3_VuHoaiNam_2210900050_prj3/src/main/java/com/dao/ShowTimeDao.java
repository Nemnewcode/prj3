package com.dao;

import com.model.ShowTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ShowTimeDao {
    private final JdbcTemplate jdbcTemplate;
    
    @Autowired
    public ShowTimeDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<ShowTime> getAllShowtimes() {
        String sql = "SELECT s.id, m.title AS movie_name, t.name AS theater_name, s.show_time, s.price " +
                     "FROM showtimes s " +
                     "JOIN movies m ON s.movie_id = m.id " +
                     "JOIN theaters t ON s.theater_id = t.id";

        return jdbcTemplate.query(sql, new RowMapper<ShowTime>() {
            @Override
            public ShowTime mapRow(ResultSet rs, int rowNum) throws SQLException {
                ShowTime showtime = new ShowTime();
                showtime.setId(rs.getInt("id"));
                showtime.setMovieName(rs.getString("movie_name"));
                showtime.setTheaterName(rs.getString("theater_name"));
                showtime.setShowTime(rs.getTimestamp("show_time"));
                showtime.setPrice(rs.getBigDecimal("price"));
                return showtime;
            }
        });
    }
}
