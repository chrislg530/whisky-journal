package com.chrislg.whisky.entity;

//import org.hibernate.annotations.Type;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name="whisky_entry")
public class WhiskyEntry {

    @Id
    @GeneratedValue
    @Column(name="id")
    private int id;

    @Column(name = "whisky_name")
    private String name;

    @Column(name = "whisky_age")
    private int age;

    @Column(name = "whisky_distiller")
    private String distiller;

    @Column(name = "whisky_origin")
    private String origin;

    @Column(name = "whisky_rating")
    private int rating;

    @Column(name = "whisky_buy")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    private boolean buy;

    @Column(name = "whisky_gift")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    private boolean gift;

    @Column(name = "whisky_bin")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    private boolean bin;

    @Column(name = "whisky_color")
    private String color;

    @Column(name = "whisky_notes")
    private String notes;

    @Column(name = "timestamp")
    private Timestamp timestamp;

    @OneToOne(cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private WhiskyEntryDetail whiskyEntryDetail;

    public WhiskyEntry(String name, int age, String distiller, String origin, int rating, boolean buy, boolean gift, boolean bin,String color, String notes, Timestamp timestamp) {
        this.name = name;
        this.age = age;
        this.distiller = distiller;
        this.origin = origin;
        this.rating = rating;
        this.buy = buy;
        this.gift = gift;
        this.bin = bin;
        this.color = color;
        this.notes = notes;
        this.timestamp = timestamp;
    }

    public WhiskyEntry() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDistiller() {
        return distiller;
    }

    public void setDistiller(String distiller) {
        this.distiller = distiller;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public boolean isBuy() {
        return buy;
    }

    public void setBuy(boolean buy) {
        this.buy = buy;
    }

    public boolean isGift() {
        return gift;
    }

    public void setGift(boolean gift) {
        this.gift = gift;
    }

    public boolean isBin() {
        return bin;
    }

    public void setBin(boolean bin) {
        this.bin = bin;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public WhiskyEntryDetail getWhiskyEntryDetail() {
        return whiskyEntryDetail;
    }

    public void setWhiskyEntryDetail(WhiskyEntryDetail whiskyEntryDetail) {
        this.whiskyEntryDetail = whiskyEntryDetail;
    }

    @Override
    public String toString() {
        return "WhiskyEntry{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", distiller='" + distiller + '\'' +
                ", origin='" + origin + '\'' +
                ", rating=" + rating +
                ", buy=" + buy +
                ", gift=" + gift +
                ", bin=" + bin +
                ", color='" + color + '\'' +
                ", notes='" + notes + '\'' +
                ", timestamp=" + timestamp +
                ", whiskyEntryDetail=" + whiskyEntryDetail +
                '}';
    }
}
