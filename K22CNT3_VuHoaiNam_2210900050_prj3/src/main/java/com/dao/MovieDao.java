package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.model.Movie;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class MovieDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy danh sách phim
    public List<Movie> getAllMovies() {
        String sql = "SELECT * FROM movies";
        return jdbcTemplate.query(sql, new RowMapper<Movie>() {
            public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
                Movie movie = new Movie();
                movie.setId(rs.getInt("id"));
                movie.setTitle(rs.getString("title"));
                movie.setDescription(rs.getString("description"));
                movie.setDuration(rs.getInt("duration"));
                movie.setGenre(rs.getString("genre"));
                movie.setReleaseDate(rs.getDate("release_date"));
                movie.setPosterUrl(rs.getString("poster_url"));
                return movie;
            }
        });
    }
}
