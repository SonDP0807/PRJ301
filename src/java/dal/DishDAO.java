/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Dish;

/**
 *
 * @author ADMIN
 */
public class DishDAO extends DBContext{
    
    public List<Dish> getAll() {
        List<Dish> list = new ArrayList<>();
        String sql = "select * from Dish";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {                
                Dish d = new Dish(rs.getInt("DishID"), 
                        rs.getString("DishName"), 
                        rs.getInt("Price"), 
                        rs.getString("Status"), 
                        rs.getString("ImageLink"));
                list.add(d);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
