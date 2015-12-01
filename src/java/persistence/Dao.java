package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	public void open() throws Exception{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pet","pet","pet");
	}

	public void close() throws Exception{
		con.close();
	}
	
        //teste de conexao
	public static void main(String[] args) {
            try {

                    Dao d = new Dao();			
                    d.open();			
                    d.close();

                    System.out.println("Banco OK");
            } catch (Exception ex) {
                    System.out.println("Erro: " + ex.getMessage());
            }
	}
}
