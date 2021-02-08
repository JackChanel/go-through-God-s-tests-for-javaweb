<%@ page language="java" contentType="text/html;charset=gb2312" %>

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="css/chinaese_main.css" type="text/css" rel="stylesheet" />
  <title>�����Ի�Ƽ����޹�˾</title>
  <script src="js/jquery-1.3.2.js" type="text/javascript"></script>
  <script src="js/globle.js" type="text/javascript"></script>
</head>

<body>

  <%@ include file="class/config.jsp" %>    
  <%@ include file="class/user.jsp" %>
  <%@ include file="class/new.jsp" %>
  <%@ include file="class/lanmu.jsp" %>


  <div class="w-950">
    <div class="toper">
      <div class="logo"><img src="images/login.png" width="205" height="59" /></div>
      <div class="help_div">
        <div class="lang"><a href="#" class="chinaese">����</a><a href="#" class="english">Ӣ��</a><a href="#"
            class="hanyu">����</a><br class="clear" />
        </div>
        <div class="search">
          <input name="" type="text" value="վ������ / �������ݺ�س�" class="search_txt"
            onclick="this.style.color='#333';this.value='';"
            onblur="this.style.color='#818181';this.value='վ������ / �������ݺ�س�';" />
        </div>
      </div>
      <br class="clear" />
    </div>
    <div class="menu">
      <div class="menu_l"></div>
      <div class="menu_r"></div>
      <div class="menu_main">
        <div class="menu_top">
          <div class="menu_nav">
            <p class="menu_head"><a href="index.jsp">�Ի���ҳ</a></p>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">��˾����</span></p>
            <div class="menu_body"><a href="about.html">�Ի���</a> <a href="about.html">�Ի���ּ</a> <a
                href="about.html">��չ����</a> <a href="about.html">��ҵ�Ļ�</a> <a href="about.html">�Ŷӽ���</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">��˾����</span></p>
            <div class="menu_body"><a href="news.html">��˾����</a><a href="news.html">��ҵ��̬</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">��Ʒ����</span></p>
            <div class="menu_body"><a href="product.html">��Ʒ����</a><a href="product.html">��Ʒ����</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">��������</span></p>
            <div class="menu_body"><a href="support.html">��������</a><a href="support.html">��������</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">��ҵ���</span></p>
            <div class="menu_body"><a href="command.html">��ҵ���</a><a href="command.html">��ҵ���</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">������Ƹ</span></p>
            <div class="menu_body"><a href="job.html">������Ƹ</a><a href="job.html">������Ƹ</a></div>
          </div>
          <div class="menu_nav more_nav">
            <p class="menu_head"><span class="child_nav">����Ƶ��</span></p>
            <div class="menu_body"><a href="cooperation.html">�������</a><a href="survey.html">���ϵ���</a><a
                href="question.html">���߽��</a></div>
          </div>
          <div class="menu_nav">
            <p class="menu_head"><a href="contant.html">��ϵ����</a></p>
          </div>
        </div>
      </div>
    </div>
    <div class="banner"><img src="images/banner.jpg" width="950" height="236" /></div>
    <div class="main m-b-10">
      <div class="main_left">
        <div class="about_us m-b-10">
          <h2>��˾���
          <a href="#" class="more">MORE</a></h2>
          <div class="about_us_contain"> <img src="images/about_img.png" width="113" height="101" /><span class="blod">�����Ի�Ƽ����޹�˾</span>
            <%
                Conf cnf = new Conf(); 
                Lanmu lm = new Lanmu();
                String host = cnf.host();
                String user = cnf.user();
                String pwd = cnf.pwd();
                String ret="";
                %>
            <%
              try {  
                Class.forName("com.mysql.jdbc.Driver");  
                Connection conn = DriverManager.getConnection(host,user,pwd);  
                  if(conn != null){        
                      Statement stmt = null;
                      ResultSet rs = null;
                      String sql = "SELECT Ldescription FROM Lanmu where Lname ='��˾����';";
                      stmt = conn.createStatement();  
                      rs = stmt.executeQuery(sql);
                      while(rs.next()){
                        ret = rs.getString("Ldescription");
                        out.println('\n'+ ret);
                      }
                  }
                  else{
                    ret = "����ʧ�ܣ�";
                  }
                }
              catch (Exception e) {
                ret = "���ݿ������쳣��";
              }
              %>
          </div>
        </div>
        <div class="lay_div">
          <h2>��ϵ����</h2>
          <div class="lay_contain">
            <dl class="contain_dl">
              <dt><img src="images/contant_img.png" width="113" height="101" /></dt>
              <dd class="title">�����Ի�Ƽ����޹�˾</dd>
              <dd>�绰��86-571-85227120</dd>
              <dd>���棺86-571-88073759</dd>
            </dl>
            <ul class="contain_ul">
              <li>��ַ��������Ī��·1418-19-2¥</li>
              <li>�ʱࣺ310011</li>
              <li>���䣺yh@yeahoo.cn/greatabcd@gmail.com</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_right">
        <div class="main_right_top m-b-10">
          <div class="lay_div news m-r-10">
            <h2>��˾����<a href="#" class="more">MORE</a></h2>
            <%
              try {  
                Class.forName("com.mysql.jdbc.Driver");  
                Connection conn = DriverManager.getConnection(host,user,pwd);  
                  if(conn != null){        
                      Statement stmt = null;  
                      ResultSet rs = null;  
                      String sql = "SELECT Ldescription FROM news;";
                      stmt = conn.createStatement();  
                      rs = stmt.executeQuery(sql);  
                      int i=0;
                      while (rs.next()&&i<=3) {
                        i++;
                        ret=rs.getString("ntitle")+"<br>";
                        out.println(ret);
                      }  
                  }
                  else{
                    ret = "����ʧ�ܣ�";
                  }
                }
              catch (Exception e) {
                ret = "���ݿ������쳣��";
              }
              
            %>
          </div>
          <div class="lay_div news">
            <h2>��������<a href="#" class="more">MORE</a></h2>
            <%
              try {  
                Class.forName("com.mysql.jdbc.Driver");  
                Connection conn = DriverManager.getConnection(host,user,pwd);  
                  if(conn != null){        
                      Statement stmt = null;  
                      ResultSet rs = null;  
                      String sql = "SELECT Ldescription FROM news WHERE Father="+"(SELECT Ldescription FROM Lanmu where Lname ='��������');";
                      stmt = conn.createStatement();  
                      rs = stmt.executeQuery(sql);  
                      int i=0;
                      while (rs.next()&&i<=3) {
                        i++;
                        ret=rs.getString("ntitle")+"<br>";
                        out.println(ret);
                      }  
                  }
                  else{
                    ret = "����ʧ�ܣ�";
                  }
                }
              catch (Exception e) {
                ret = "���ݿ������쳣��";
              }
              
            %>
          </div>
          <br class="clear" />
        </div>
        <div class="lay_div">
          <h2>��Ʒ����<a href="#" class="more">MORE</a></h2>
          <%
              try {  
                Class.forName("com.mysql.jdbc.Driver");  
                Connection conn = DriverManager.getConnection(host,user,pwd);  
                  if(conn != null){        
                      Statement stmt = null;  
                      ResultSet rs = null;  
                      String sql = "SELECT Ldescription FROM news WHERE Father="+"(SELECT Ldescription FROM Lanmu where Lname ='��Ʒ����');";
                      stmt = conn.createStatement();  
                      rs = stmt.executeQuery(sql);  
                     int i=0;
                      while (rs.next()&&i<=3) {
                        i++;
                        ret=ret+rs.getString("ntitle")+"<br>";
                        out.println(ret);
                      }  
                  }
                  else{
                    ret = "����ʧ�ܣ�";
                  }
                }
              catch (Exception e) {
                ret = "���ݿ������쳣��";
              }
              
            %>
        </div>
      </div>
      <br class="clear" />
    </div>
    <div class="bottom">
      <p><a href="#">��ҳ</a> | <a href="#">��ϵ����</a></p>
      <p>?2011 �����Ի���Ϣ�Ƽ����޹�˾ All rights reserved.</p>
    </div>
  </div>
</body>

</html>