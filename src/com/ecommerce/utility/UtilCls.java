package com.ecommerce.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ecommerce.model.User;

public class UtilCls {
	//connect to db
		static Connection conn = null;
		static {
			try {
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
				conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/teamecommercedb", "root", "root");
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		//add new user to db
		public boolean registerUser(String a, String b, String c, String d, String e, String f, String g, String h, String i, String j) {
			String query="insert into user values(null,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				PreparedStatement ps = conn.prepareStatement(query);
				ps.setString(1, a);
				ps.setString(2, b);
				ps.setString(3, c);
				ps.setString(4, d);
				ps.setString(5, e);
				ps.setString(6, "role");
				ps.setString(7, f);
				ps.setString(8, g);
				ps.setString(9, h);
				ps.setString(10, i);
				ps.setString(11, j);
				ps.execute();
				return true;
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return false;
			}
		}
		
		public void delete() {
			System.out.println("clicked");
		}
		
		public void test(String s) {
			System.out.println(s);
		}
		
		public List<User> retLogins(){
			List<User> lp = new ArrayList<User>();
			String query ="select* from user";
			Statement st;
			
			try {
				st=conn.createStatement();
				ResultSet rs = st.executeQuery(query);
				while(rs.next()) {
					User u = new User();
					u.setUid(rs.getInt(1));
					u.setName(rs.getString(2));
					u.setEmail(rs.getString(3));
					u.setPhone(rs.getString(4));
					u.setUsername(rs.getString(5));
					u.setPassword(rs.getString(6));
					u.setRole(rs.getString(7));
					u.setStreet_name(rs.getString(8));
					u.setApt(rs.getString(9));
					u.setCity(rs.getString(10));
					u.setState(rs.getString(11));
					u.setZip(rs.getString(12));
					lp.add(u);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return lp;
			
		}
}
