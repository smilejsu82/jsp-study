package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {
	
//	String id = "hr";
//	String pass = "123456";
//	String url = "jdbc:oracle:thin:@localhost:49161:XE";
	
	String id = "system";
	String pass = "123456";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	Connection con;
	PreparedStatement state;
	ResultSet resultSet;
	final String oracleClassName = "oracle.jdbc.driver.OracleDriver";
	
	public void getCon()
	{
		try 
		{
			Class.forName(oracleClassName);
			con = DriverManager.getConnection(url, id, pass);
			
			System.out.println("접속 완료: " + con);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void insertMember(MemberBean memberBean)
	{
		try {
			
			getCon();
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			
			System.out.println("con: " + con);
			
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
	
	public Vector<MemberBean> allSelectMembers()
	{
		Vector<MemberBean> v = new Vector();
		
		try {
			
			this.getCon();
			
			String sql = "select * from member";
			
			this.state = this.con.prepareStatement(sql);
			
			this.resultSet = this.state.executeQuery();
			
			while(this.resultSet.next())
			{
				MemberBean bean = new MemberBean();
				bean.setId(resultSet.getString(1));
				bean.setPass1(resultSet.getString(2));
				bean.setEmail(resultSet.getString(3));
				bean.setTel(resultSet.getString(4));
				bean.setHobby(resultSet.getString(5));
				bean.setJob(resultSet.getString(6));
				bean.setAge(resultSet.getString(7));
				bean.setInfo(resultSet.getString(8));
				v.add(bean);				
			}
			this.con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return v;
	}
	
}
