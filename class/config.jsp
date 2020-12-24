<%

class Conf {
    private String host = "jdbc:mysql://localhost:3306/jsp"; 
    private String username = "jsp"; 
    private String password = "jso"; 
    public String host(){
        return this.host;
    }
    public String name(){
        return this.username;
    }
    public String pwd(){
        return this.password;
    }
}
%>