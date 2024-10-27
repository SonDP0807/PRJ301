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
import model.Table;

/**
 *
 * @author ADMIN
 */
public class TableDAO extends DBContext {

    public String getTableStatusById(int id) {
        String status = "";
        String sql = "select TableStatus from [Table] where TableID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                status = rs.getString("TableStatus");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public List<Table> getAllTable() {
        List<Table> list = new ArrayList<>();
        String sql = "select * from [Table]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Table tb = new Table(rs.getInt("TableID"),
                        rs.getString("TableStatus"));
                list.add(tb);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void setStatsus(int tableId, String status) {
        String sql = """
                     UPDATE [dbo].[Table]
                      SET   [TableStatus] = ?
                      WHERE [TableID] = ?
                     """;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, tableId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
