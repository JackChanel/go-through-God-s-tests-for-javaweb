<%@ page import="java.sql.*"%>
<%

class User {
public String get(String url,String username,String password){
    String ret="";
      try {  
            Class.forName("com.mysql.jdbc.Driver");  //驱动程序名
            Connection conn = DriverManager.getConnection(url,username,password);  //连接

            if(conn != null){        
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT *FROM users;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                while (rs.next()) {

           ret=ret+"<br><br>"+rs.getInt("id")+"<br>"+rs.getString("username")+"<br>"+rs.getString("pwd");
            }  

            }
            else{  
               ret = "连接失败！";  
            }  
        }catch (Exception e) {        
            ret = "数据库连接异常！";  
        }  

        return ret;
  } 

}
%>