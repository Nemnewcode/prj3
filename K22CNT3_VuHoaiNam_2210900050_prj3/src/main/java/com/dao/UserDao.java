package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.model.User;

public class UserDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Thêm user
    public int saveUser(User user) {
        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
        return jdbcTemplate.update(sql, user.getUsername(), user.getPassword());
    }

    // Lấy danh sách user
    public List<User> getAllUsers() {
        return jdbcTemplate.query("SELECT * FROM users", new RowMapper<User>() {
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"));
            }
        });
    }
}
