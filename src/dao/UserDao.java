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
                System.out.println("�ɹ������ݿ�");
            }

            ///ע��
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
                System.out.println("ע�����");
            }
            //��¼
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
                           System.out.println("��¼�ɹ�");
                           conn.close();
                           return true;
                       }
                           //��¼�ɹ�
               }
                conn.close();
               System.out.println("��¼ʧ��");
               return false;
               //��¼ʧ��

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
                    System.out.println("�õ�m");
                    return member;


              }

}
