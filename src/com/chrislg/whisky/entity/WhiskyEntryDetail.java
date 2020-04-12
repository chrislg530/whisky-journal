package com.chrislg.whisky.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="whisky_entry_detail")
public class WhiskyEntryDetail {

    @Id
    @GeneratedValue(generator = "foreigngen")
    @GenericGenerator(strategy = "foreign", name="foreigngen",
            parameters = @Parameter(name = "property", value="whiskyEntry"))
    @Column(name="id")
    private int id;

    @Column(name="balance")
    private int balance;

    @Column(name="linger")
    private int linger;

    @Column(name="heat")
    private int heat;

    @Column(name="dark_fruit")
    private int darkFruit;

    @Column(name="citrus")
    private int citrus;

    @Column(name="floral")
    private int floral;

    @Column(name="spicy")
    private int spicy;

    @Column(name="herbal")
    private int herbal;

    @Column(name="malty")
    private int malty;

    @Column(name="toffee")
    private int toffee;

    @Column(name="woody")
    private int woody;

    @Column(name="tannic")
    private int tannic;

    @Column(name="char_lvl")
    private int charLvl;

    @Column(name="sweet")
    private int sweet;

    @Column(name="body")
    private int body;

    @Column(name="legs")
    private int legs;

    @OneToOne(mappedBy = "whiskyEntryDetail")
    private WhiskyEntry whiskyEntry;

    public WhiskyEntryDetail(int balance, int linger, int heat, int darkFruit, int citrus, int floral, int spicy, int herbal, int malty, int toffee, int woody, int tannic, int charLvl, int sweet, int body, int legs) {
        this.balance = balance;
        this.linger = linger;
        this.heat = heat;
        this.darkFruit = darkFruit;
        this.citrus = citrus;
        this.floral = floral;
        this.spicy = spicy;
        this.herbal = herbal;
        this.malty = malty;
        this.toffee = toffee;
        this.woody = woody;
        this.tannic = tannic;
        this.charLvl = charLvl;
        this.sweet = sweet;
        this.body = body;
        this.legs = legs;
    }

    public WhiskyEntryDetail() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public int getLinger() {
        return linger;
    }

    public void setLinger(int linger) {
        this.linger = linger;
    }

    public int getHeat() {
        return heat;
    }

    public void setHeat(int heat) {
        this.heat = heat;
    }

    public int getDarkFruit() {
        return darkFruit;
    }

    public void setDarkFruit(int darkFruit) {
        this.darkFruit = darkFruit;
    }

    public int getCitrus() {
        return citrus;
    }

    public void setCitrus(int citrus) {
        this.citrus = citrus;
    }

    public int getFloral() {
        return floral;
    }

    public void setFloral(int floral) {
        this.floral = floral;
    }

    public int getSpicy() {
        return spicy;
    }

    public void setSpicy(int spicy) {
        this.spicy = spicy;
    }

    public int getHerbal() {
        return herbal;
    }

    public void setHerbal(int herbal) {
        this.herbal = herbal;
    }

    public int getMalty() {
        return malty;
    }

    public void setMalty(int malty) {
        this.malty = malty;
    }

    public int getToffee() {
        return toffee;
    }

    public void setToffee(int toffee) {
        this.toffee = toffee;
    }

    public int getWoody() {
        return woody;
    }

    public void setWoody(int woody) {
        this.woody = woody;
    }

    public int getTannic() {
        return tannic;
    }

    public void setTannic(int tannic) {
        this.tannic = tannic;
    }

    public int getCharLvl() {
        return charLvl;
    }

    public void setCharLvl(int charLvl) {
        this.charLvl = charLvl;
    }

    public int getSweet() {
        return sweet;
    }

    public void setSweet(int sweet) {
        this.sweet = sweet;
    }

    public int getBody() {
        return body;
    }

    public void setBody(int body) {
        this.body = body;
    }

    public int getLegs() {
        return legs;
    }

    public void setLegs(int legs) {
        this.legs = legs;
    }

    public WhiskyEntry getWhiskyEntry() {
        return whiskyEntry;
    }

    public void setWhiskyEntry(WhiskyEntry whiskyEntry) {
        this.whiskyEntry = whiskyEntry;
    }

    @Override
    public String toString() {
        return "WhiskyEntryDetail{" +
                "id=" + id +
                ", balance=" + balance +
                ", linger=" + linger +
                ", heat=" + heat +
                ", darkFruit=" + darkFruit +
                ", citrus=" + citrus +
                ", floral=" + floral +
                ", spicy=" + spicy +
                ", herbal=" + herbal +
                ", malty=" + malty +
                ", toffee=" + toffee +
                ", woody=" + woody +
                ", tannic=" + tannic +
                ", charLvl=" + charLvl +
                ", sweet=" + sweet +
                ", body=" + body +
                ", legs=" + legs +
                '}';
    }
}
