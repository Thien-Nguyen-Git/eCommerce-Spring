package com.ecommerce.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.ecommerce.models.Product;
import com.ecommerce.models.User;

public class UtilCls {
	//connect to db
			static Connection conn = null;
			static {
				try {
					DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
					conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/teamecommercedb", "root", "TakeoRyuuken0!");
				} 
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			
			//add new user to db
			public boolean registerUser(String a, String b, String c, String d, String e, String f, String g, String h, String i, int j) {
				String query="insert into user values(null,?,?,?,?,?,?,?,?,?,?,?)";
				try {
					PreparedStatement ps = conn.prepareStatement(query);
					ps.setString(1, a);
					ps.setString(2, b);
					ps.setString(3, c);
					ps.setString(4, d);
					ps.setString(5, e);
					ps.setString(6, "user");
					ps.setString(7, f);
					ps.setString(8, g);
					ps.setString(9, h);
					ps.setString(10, i);
					ps.setInt(11, j);
					ps.execute();
					return true;
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					return false;
				}
			}
			
			public void delete(String id) {
				String query="delete from user where uid='"+Integer.parseInt(id)+"';";
				PreparedStatement ps;
				try {
					ps = conn.prepareStatement(query);
					ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
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
						u.setZip(rs.getInt(12));
						lp.add(u);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return lp;
				
			}
			
			public User returnUser(int id){
				String query ="select * from user where uid = "+id;
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
						u.setZip(rs.getInt(12));
						return u;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return null;
				
				
			}
			
			public boolean updateUser(String a, String b, String c, String d, String e, String f, String g, String h, String i, String j, String k, int l) {
				String  query= "update user set name =?, phone =?, username=?, password =?, role=?, street_name=?, apt=?, city=?, state=?, zip=? where uid=?";
				
				try {
					PreparedStatement ps =conn.prepareStatement(query);
					ps.setString(1, a);
				//	ps.setString(2, b);
					ps.setString(2, c);
					ps.setString(3, d);
					ps.setString(4, e);
					ps.setString(5, k);
					ps.setString(6, f);
					ps.setString(7, g);
					ps.setString(8, h);
					ps.setString(9, i);
					ps.setInt(10, Integer.parseInt(j));
					ps.setInt(11, l);
					ps.executeUpdate();
					return true;
					
				} catch (SQLException z) {
					// TODO Auto-generated catch block
					z.printStackTrace();
				}
				return false;
				
				
			}
			
			public boolean checkRole(String s) {
				String lowerS = s.toLowerCase();
				if(lowerS.equals("user")||lowerS.equals("admin")) {
					return true;
				}
				return false;
			}
			
			public boolean checkZip(String s) {
				try {
				
				int zip = Integer.parseInt(s);
				return true;
				}
				catch
				(Exception e) {
					return false;
				}
			
			}
			
			public boolean adminRegisterUser(String a, String b, String c, String d, String e) {
				String query="insert into user(name, email, username, password, role) values(?,?,?,?,?)";
				try {
					PreparedStatement ps = conn.prepareStatement(query);
					ps.setString(1, a);
					ps.setString(2, b);
					ps.setString(3, c);
					ps.setString(4, d);
					ps.setString(5, e);
					ps.execute();
					return true;
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					return false;
				}
			}
			
			public List<Product> retProducts(){
				List<Product> prodList = new ArrayList<Product>();
				String query ="select * from product";
				Statement st;
				
				try {
					st=conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					while(rs.next()) {
						Product p = new Product();
						p.setPid(rs.getInt(1));
						p.setProduct_name(rs.getString(2));
						p.setDescription(rs.getString(3));
						p.setCategory(rs.getString(4));
						p.setPrice(rs.getDouble(5));
						p.setStock_amt(rs.getInt(6));
						byte[] temp = rs.getBytes("picture");
						String encode = Base64.getEncoder().encodeToString(temp);
						p.setPicture(encode);
						prodList.add(p);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return prodList;
				
			}
}
