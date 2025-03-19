package com.dao;

import com.model.Theater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class TheaterDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public TheaterDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy danh sách tất cả các rạp chiếu phim
    public List<Theater> getAllTheaters() {
        String sql = "SELECT * FROM theaters";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new Theater(
            rs.getInt("id"),
            rs.getString("name"),
            rs.getString("location"),
            rs.getInt("total_seats")
        ));
    }
}
