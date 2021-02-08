<%

class Conf {
    private String host = "jdbc:mysql://localhost:3306/jsp"; 
    private String username = "jsp123"; 
    private String password = "jsp123"; 
    public String host(){
        return this.host;
    }
    public String user(){
        return this.username;
    }
    public String pwd(){
        return this.password;
    }
}
%>