package com.model;

public class Theater {
    private int id;
    private String name;
    private String location;
    private int totalSeats;

    // Constructors
    public Theater() {}

    public Theater(int id, String name, String location, int totalSeats) {
        this.id = id;
        this.name = name;
        this.location = location;
        this.totalSeats = totalSeats;
    }

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public int getTotalSeats() { return totalSeats; }
    public void setTotalSeats(int totalSeats) { this.totalSeats = totalSeats; }
}
