import java.sql.*;

public class JDBCSample {
	public static void main(String args[])
		throws Exception
	{
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/keywords;user=kris");
		Statement stmt = con.createStatement();

		ResultSet rs = stmt.executeQuery(
			"select moviename, releasedate FROM movies WHERE time > 120"
		);

		while (rs.next()) {
			System.out.println("Name= " + rs.getString("moviename"));
			System.out.println("Date= " + rs.getString("releasedate"));
			System.out.println("--");
		}
	}
}
