import java.sql.*;
/*
 * @author Jack Brody
 */

public class PaperReviewDriver {
	
	static final String DB_URL = "jdbc:mysql://localhost:3306/paperReviewers";
	
	static final String USER = "root";
	static final String PASS = "password";
	
	static Statement stmt = null;
	String testQuery = "";
	static ResultSet rs;
	static Connection conn = null;
	
	
	public static void main(String[] args) {
		
		   try {
	conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	
			   if(conn!=null) {
				   System.out.println("The database is running properly!");
				   stmt = conn.createStatement();
				    
				   PaperReviewDriver prd = new PaperReviewDriver();
				   
				
				 prd.paperDetail();
				 prd.getReviews();
				 prd.getCount();
				 prd.addPaper();
				 prd.deleteAuthor();
				
				 
			   }
		   }catch(Exception e) {
			   System.out.println("You are not connected!!!!!");
		   }
		    
	}
	
	
	public ResultSet addPaper() throws SQLException{
		//Query 4. This Creates A Paper Submission. 
	conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	testQuery = "INSERT INTO PAPER(title,abstract,fileName,contactAuthorEmail) VALUES(?,?,?,?)";

	PreparedStatement preps = conn.prepareStatement(testQuery);

	String newtitle = "life can suck sometimes";
	String newAbstract = "go through the struggles of john smith as he comes to terms about the diffulties he faces";
	String newFileName = "life.doc";
	String newContactEmail = "patrick@gmail.com";

	preps.setString(1, newtitle);
	preps.setString(2, newAbstract);
	preps.setString(3, newFileName);
	preps.setString(4, newContactEmail);

	preps.executeUpdate();
	 //DISPLAY THE new PAPER WE JUST ADDED!
	stmt = conn.createStatement();

	System.out.println("\nExecuting Query 4. The query that was added to the DB is: ");
	String newRow = "SELECT * FROM PAPER WHERE TITLE='" + newtitle+ "'" ;
	rs = stmt.executeQuery(newRow);


	while(rs.next()) {
		System.out.println(rs.getString("paperID") + ", " + rs.getString("title") + ", " + rs.getString("abstract") + ", " + rs.getString("fileName") + ", " + rs.getString("contactAuthorEmail"));

	}

	return rs;
		
	}


public ResultSet paperDetail() throws SQLException{
	  //Query 1.  This Method Returns The Submitted Paper Details. 
	conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	stmt = conn.createStatement();
	testQuery =  "SELECT paperId, title, abstract, contactAuthorEmail, firstName, lastName FROM PAPER INNER JOIN AUTHOR ON PAPER.contactAuthorEmail=AUTHOR.emailAddr ORDER BY contactAuthorEmail";
	System.out.println("\nExecuting Query 1 to get Paper Details.  Will be ordered by Author Email ");
	rs = stmt.executeQuery(testQuery);
	while(rs.next()) {
		 System.out.println(rs.getString("paperId") + ", " + rs.getString("title") + ", " + rs.getString("abstract") + ", " + rs.getString("contactAuthorEmail") + ", " + rs.getString("firstName") + ", " + rs.getString("lastname"));

	}
	  return rs; 
}


public ResultSet getReviews() throws SQLException{
	//Query 2. This method gets all reviews from the database  that HAD a Recommendation. 
	Connection conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	stmt = conn.createStatement();
	testQuery = "SELECT * FROM REVIEW WHERE recommendation IS NOT NULL ";
	System.out.println("\nExecuting Query 2 where it only shows the papers that WERE RECOMMENDED!");
	rs = stmt.executeQuery(testQuery);
	while(rs.next()) {
		System.out.println(rs.getString("reviewId") + ", " + rs.getString("paperID") + ", " + rs.getString("recommendation") + ", " + rs.getString("meritScore") + ", " + rs.getString("readabilityScore") + ", " + rs.getString("originalityScore") + ", " + rs.getString("relevanceScore") + ", " + rs.getString("reviewerEmailAddr") + ", " + rs.getString("authorFeedback") + ", " + rs.getString("committeeFeedback"));
	}
	return rs;
	
}

public ResultSet getCount() throws SQLException{
	//Query 3.  This method gets the count of all papers submitted
	Connection conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	stmt = conn.createStatement();
	testQuery = "SELECT COUNT(paperID) FROM PAPER;";
	System.out.println("\nExecuting Query 3 where it shows the count of all the Papers");
	rs = stmt.executeQuery(testQuery);
	while(rs.next()) {
		System.out.println(rs.getInt(1));
	}
	
	return rs;
}


public ResultSet deleteAuthor() throws SQLException{
	//Query 5. This method attempts to Delete an Author from the database. 
	conn = (Connection)DriverManager.getConnection(DB_URL + "?autoReconnect=true&useSSL=false", USER, PASS);
	stmt = conn.createStatement();
	testQuery = "DELETE FROM AUTHOR ORDER BY emailAddr limit 1;";
	System.out.println("\nExecuting Query 5 Where we attempt to Delete the First Author!");
	try {
		rs = stmt.executeQuery(testQuery);
		System.out.println("The query was able to delete the Author! This is because it isn't used in any other tables");
	}catch(SQLException e) {
		e.getErrorCode();
		System.out.println(e); 
		System.out.println("You will not be able to Delete this Row since there is a FOREIGN Key which means it is accessed somewhere else as well. ");
	}
	
	
	
	//DELETE FROM AUTHOR ORDER BY emailAddr limit 1;
	return rs;
}

}
