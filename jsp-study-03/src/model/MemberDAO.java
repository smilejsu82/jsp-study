package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	String id = "hr";
	String pass = "123456";
	String url = "jdbc:oracle:thin:@localhost:49161:XE";
	
	Connection con;
	PreparedStatement state;
	final String oracleClassName = "oracle.jdbc.driver.OracleDriver";
	
	public void getCon()
	{
		try 
		{
			Class.forName(oracleClassName);
			this.con = DriverManager.getConnection(url, id, pass);
		}
		catch(Exception e)
		{
			
		}
	}
	
	public void insertMember(MemberBean memberBean)
	{
		try {
			
			getCon();
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, memberBean.getId());
			statement.setString(2, memberBean.getPass1());
			statement.setString(3, memberBean.getEmail());
			statement.setString(4, memberBean.getTel());
			statement.setString(5, memberBean.getHobby());
			statement.setString(6, memberBean.getJob());
			statement.setString(7, memberBean.getAge());
			statement.setString(8, memberBean.getInfo());
			
			statement.executeUpdate();
			
			con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
