package com.loginDao;
import java.sql.*;
import com.loginuser.User;
import java.util.List;
import java.util.ArrayList;

import bean.ConnectionProvider;


public class UserDao {

	
	public static int save(User u) {
		int status=0;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement  ps= con.prepareStatement("insert into register(name,password,email,sex,country,mobile) values(?,?,?,?,?,?)");  
			ps.setString(1,u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3,u.getEmail());
			ps.setString(4,u.getSex());
			ps.setString(5,u.getCountry());
			ps.setLong(6, u.getMobile());
			status=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
		
	}
	
	
	public static boolean login(User u) {
		boolean status=false;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement  ps= con.prepareStatement("select * from register where email=? and password=?");  
			
			ps.setString(1,u.getEmail());
			ps.setString(2, u.getPassword());
				
			ResultSet rs=ps.executeQuery();
			
			status=rs.next();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		finally{
		}
		return status;
		
	}
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=ConnectionProvider.getCon();  
	        PreparedStatement ps=con.prepareStatement
	        		("update register set name=?,password=?,email=?,sex=?,mobile=?,country=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setLong(5, u.getMobile());
	        ps.setString(6,u.getCountry());  
	        ps.setInt(7,u.getId());  
	        status=ps.executeUpdate(); 
	        //System.out.println("_____________"+u.getName());
	        //System.out.println("_____________"+u.getId());
	        //System.out.println("_____________"+u.getCountry());

    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u)
	{
		int status=0;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("delete from register where id=?");
			ps.setInt(1, u.getId());
			status=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}return status;
	}
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();

		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from register");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setMobile(rs.getLong("mobile"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				
				list.add(u);
			
			}

			
		}catch (Exception e) {
			System.out.println(e);
            }
           
		return list;
	}
	public static User getAllRecordById(int id) {
	User u=null;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from register where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				u.setSex(rs.getString("sex"));
				u.setMobile(rs.getLong("mobile"));
				u.setCountry(rs.getString("country"));
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}return u;
		
	}
}
