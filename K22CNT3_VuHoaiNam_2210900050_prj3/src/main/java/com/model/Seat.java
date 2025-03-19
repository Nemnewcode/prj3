package com.model;

public class Seat {
    private int id;
    private int theaterId;
    private String seatNumber;
    private String type;

    public Seat() {}

    public Seat(int id, int theaterId, String seatNumber, String type) {
        this.id = id;
        this.theaterId = theaterId;
        this.seatNumber = seatNumber;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTheaterId() {
        return theaterId;
    }

    public void setTheaterId(int theaterId) {
        this.theaterId = theaterId;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
