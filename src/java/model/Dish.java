/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


/**
 *
 * @author ADMIN
 */
public class Dish {
    private int DishID;
    private String DishName;
    private int Price;
    private String Status;
    private String ImageLink;

    public Dish() {
    }

    public Dish(int DishID, String DishName, int Price, String Status, String ImageLink) {
        this.DishID = DishID;
        this.DishName = DishName;
        this.Price = Price;
        this.Status = Status;
        this.ImageLink = ImageLink;
    }

    public int getDishID() {
        return DishID;
    }

    public void setDishID(int DishID) {
        this.DishID = DishID;
    }

    public String getDishName() {
        return DishName;
    }

    public void setDishName(String DishName) {
        this.DishName = DishName;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getImageLink() {
        return ImageLink;
    }

    public void setImageLink(String ImageLink) {
        this.ImageLink = ImageLink;
    }
    
    
}
