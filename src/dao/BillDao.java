package dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.util.ArrayList;
import vo.Bill;
public class BillDao {


        Connection conn = null;

        public void initConnection() throws Exception{
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:D:/dropbox/family/family.db");
            System.out.println("成功打开数据库");
        }
       ////建立全索引队列
        public ArrayList getAllBill() throws Exception {
            initConnection();
        Statement stat = conn.createStatement();
        ArrayList al = new ArrayList();
        ResultSet rs = stat.executeQuery("select id,inout,type,detail,money,member from  bill ");
        while(rs.next())
        {
            Bill bill = new Bill();
            bill.setId(rs.getInt("id"));
            bill.setInout(rs.getString("inout"));
            bill.setType(rs.getString("type"));
            bill.setDetail(rs.getString("detail"));
            bill.setMoney(rs.getInt("money"));
            bill.setMember(rs.getString("member"));
            System.out.println(bill.getInout()+bill.getType()+bill.getMoney()+bill.getMember());
            al.add(bill);
        }

        conn.close();
        return al;
    }

     ////添加新数据
         public void insert  (int id,String inout ,String type, String detail,Integer  money,String member) throws Exception {
            initConnection();
            Statement stat = conn.createStatement();
            String sql = "INSERT INTO bill VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ps.setString(2,inout);
             ps.setString(3,type);
             ps.setString(4,detail);
             ps.setInt(5,money);
             ps.setString(6,member);
             ps.execute();
             ps.close();
             conn.close();
         }
         ////删除
         public void delete (int id) throws Exception {
            initConnection();
            String sql = "DELETE FROM  bill  WHERE  id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ps.execute();
            ps.close();
            conn.close();
         }
          //查询 ----
            //收支
            public ArrayList select_inout (String inout) throws Exception {
            initConnection();
            ArrayList al = new ArrayList();
            String sql = "SELECT * FROM  bill WHERE inout = (?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,inout);
            ps.execute();
            Statement stat = conn.createStatement();
                ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                Bill bill =new Bill();
                bill.setId(rs.getInt("id"));
                bill.setInout(rs.getString("inout"));
                bill.setType(rs.getString("type"));
                bill.setDetail(rs.getString("detail"));
                bill.setMoney(rs.getInt("money"));
                bill.setMember(rs.getString("member"));
                al.add(bill);
            }
            conn.close();
            return al;
            }
            //类型
             public ArrayList select_type (String type) throws Exception {
            initConnection();
                 ArrayList al = new ArrayList();
           String sql = "SELECT * FROM  bill WHERE type = (?)";
           PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,type);
              ps.execute();

                 Statement stat = conn.createStatement();
             //    ResultSet rs = stat.executeQuery(sql);
                 ResultSet rs = ps.executeQuery();
                 while (rs.next())
                 {
                     Bill bill =new Bill();
                     bill.setId(rs.getInt("id"));
                     bill.setInout(rs.getString("inout"));
                     bill.setType(rs.getString("type"));
                     bill.setDetail(rs.getString("detail"));
                     bill.setMoney(rs.getInt("money"));
                     bill.setMember(rs.getString("member"));
                     al.add(bill);
                 }
                 conn.close();
                 System.out.println("返回al");
                 return al;
               }
            // 成员
          public ArrayList select_member (String member) throws Exception {
          initConnection();
              ArrayList al = new ArrayList();
              System.out.println("new");
          String sql = "SELECT  id,inout,type,detail,money,member FROM  bill WHERE member = ?";
              System.out.println("1");
              PreparedStatement ps = conn.prepareStatement(sql);
              System.out.println("2");
              ps.setString(1,member);
              System.out.println("成员sql");
              ps.execute();
              ResultSet rs = ps.executeQuery();
              System.out.println("rs循环");
              while (rs.next())
              {
                  Bill bill =new Bill();
                  bill.setId(rs.getInt("id"));
                  bill.setInout(rs.getString("inout"));
                  bill.setType(rs.getString("type"));
                  bill.setDetail(rs.getString("detail"));
                  bill.setMoney(rs.getInt("money"));
                  bill.setMember(rs.getString("member"));
                  al.add(bill);
              }
              conn.close();
              System.out.println("返回al");
              return al;
            }
         ////ARRAYLIST 处理
          public void arraylist(ArrayList aa){
             for(int i =0;i<aa.size();i++)
             {
                 Bill bill = new Bill();

                 bill.getId();
                 bill.getInout();
                 bill.getType();
                 bill.getDetail();
                 bill.getMoney();
                 bill.getMember();

             }

          }

          public int returnid() throws Exception {
            initConnection();
            int maxid =0;
            String sql = "SELECT  id FROM  bill";
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql);
            while (rs.next()){
                if(maxid<rs.getInt("id"))
                maxid = rs.getInt("id");
            }

            return  maxid   ;
          }

}
