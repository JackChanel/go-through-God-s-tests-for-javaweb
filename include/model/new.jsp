
<%@ page import="java.sql.*"%>
<%
//⭐out.println("<br>"+cof.getUrl()+"<br>"+cof.getUname()+"<br>"+cof.getPwd());// 测试配置文件
//🔥构造model
class New {

/**
*🔥查询
*/
public String get_data(String url,String username,String password){

Conf cnf=new Conf(); //获取配置文件
    String ret="";
      try {  
            Class.forName("com.mysql.jdbc.Driver");  //驱动程序名
            Connection conn = DriverManager.getConnection(url,username,password);  //连接

            if(conn != null){        
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT *FROM News;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                while (rs.next()) {
               ret=ret+"<br><br>"+rs.getInt("id")+"<br>"+rs.getString("ntittle")+"<br>"+rs.getString("ncontent")+"<br>"+rs.getString("nurl");
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