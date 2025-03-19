package com.dao;

import com.model.Movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class MovieDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public MovieDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }



    public List<Movie> getAllMovies() {
        String sql = "SELECT * FROM movies";
        return jdbcTemplate.query(sql, new RowMapper<Movie>() {
            @Override
            public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Movie(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("duration"),
                        rs.getString("genre"),
                        rs.getString("release_date"),
                        rs.getString("poster_url")
                );
            }
        });
    }
    public Movie getMovieById(int id) {
        String sql = "SELECT * FROM movies WHERE id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Movie>() {
                @Override
                public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
                    return new Movie(
                            rs.getInt("id"),
                            rs.getString("title"),
                            rs.getString("description"),
                            rs.getInt("duration"),
                            rs.getString("genre"),
                            rs.getString("release_date"),
                            rs.getString("poster_url")
                    );
                }
            });
        } catch (Exception e) {
            return null; // Trả về null nếu không tìm thấy
        }
    }

    public void addMovie(Movie movie) {
        String sql = "INSERT INTO movies (title, description, duration, genre, release_date, poster_url) VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, movie.getTitle(), movie.getDescription(), movie.getDuration(), 
                            movie.getGenre(), movie.getReleaseDate(), movie.getPosterUrl());
    }
    
    // Sửa updateMovie để cập nhật tất cả các cột
    public void updateMovie(Movie movie) {
        String sql = "UPDATE movies SET title = ?, description = ?, duration = ?, genre = ?, release_date = ?, poster_url = ? WHERE id = ?";
        jdbcTemplate.update(sql, movie.getTitle(), movie.getDescription(), movie.getDuration(), 
                            movie.getGenre(), movie.getReleaseDate(), movie.getPosterUrl(), movie.getId());
    }

    public void deleteMovie(int id) {
        String sql = "DELETE FROM movies WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }
}
