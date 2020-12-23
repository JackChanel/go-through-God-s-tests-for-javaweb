<%

class Conf {
    
    private String url = "jdbc:mysql://localhost:3306/jsp"; 
    private String username = "jsp"; 
    private String password = "jso"; 
    public String getUrl(){
        return this.url;
    }
        public String getUname(){
        return this.username;
    }
        public String getPwd(){
        return this.password;
    }
}
%>