package dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.util.ArrayList;
import vo.User;

public class UserDao {



            Connection conn = null;

            public void initConnection() throws Exception{
                Class.forName("org.sqlite.JDBC");
                conn = DriverManager.getConnection("jdbc:sqlite:D:/dropbox/family/family.db");
                System.out.println("成功打开数据库");
            }

            ///注册
            public void  register(String username,String password,String member) throws Exception {
                initConnection();
                String sql = "INSERT INTO  user VALUES (?,?,?)";

                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1,username);
                ps.setString(2,password);
                ps.setString(3,member);
                ps.execute();
                ps.close();
                conn.close();
                System.out.println("注册完成");
            }
            //登录
            public boolean login(String username,String password) throws Exception {
                initConnection();

                String sql  = "SELECT  * FROM  user " ;
                Statement stat = conn.createStatement();
               ResultSet rs = stat.executeQuery(sql);

               while (rs.next())
               {
                   if(rs.getString("username").equals(username))
                       if(rs.getString("password").equals(password))
                       {
                           System.out.println("登录成功");
                           conn.close();
                           return true;
                       }
                           //登录成功
               }
                conn.close();
               System.out.println("登录失败");
               return false;
               //登录失败

            }
             //
              public String returnmember(String username) throws Exception {
                  initConnection();
                  String sql = "SELECT * FROM user WHERE username = ? ";
                  PreparedStatement ps = conn.prepareStatement(sql);
                  ps.setString(1,username);
                  ps.execute();
                Statement stat = conn.createStatement();
                ResultSet rs = stat.executeQuery(sql);
                ResultSet s = ps.executeQuery();
               String member= s.getString("member");
         //           String member = rs.getString("member");
                    conn.close();
                    System.out.println("得到m");
                    return member;


              }

}
