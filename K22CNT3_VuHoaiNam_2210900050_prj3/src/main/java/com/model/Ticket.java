package com.model;

import java.sql.Timestamp;

public class Ticket {
    private int id;
    private int userId;
    private int showtimeId;
    private int seatId;
    private String status;
    private Timestamp bookingDate;

    // Constructors
    public Ticket() {}

    public Ticket(int id, int userId, int showtimeId, int seatId, String status, Timestamp bookingDate) {
        this.id = id;
        this.userId = userId;
        this.showtimeId = showtimeId;
        this.seatId = seatId;
        this.status = status;
        this.bookingDate = bookingDate;
    }

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getShowtimeId() { return showtimeId; }
    public void setShowtimeId(int showtimeId) { this.showtimeId = showtimeId; }

    public int getSeatId() { return seatId; }
    public void setSeatId(int seatId) { this.seatId = seatId; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public Timestamp getBookingDate() { return bookingDate; }
    public void setBookingDate(Timestamp bookingDate) { this.bookingDate = bookingDate; }
}
