/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RRTS;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.*;
import java.io.*;

/**
 *
 * @author rakesh
 */
public class ComplainTest {
    
    public ComplainTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void user() throws IOException, ClassNotFoundException, SQLException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Telephone.txt"));
        String Telephone = br.readLine();
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Area.txt"));
        String Area = br.readLine();
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Location.txt"));
        String Location = br.readLine();
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Description.txt"));
        String Description = br.readLine();
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Comments.txt"));
        String Comments = br.readLine();
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("select * from COMPLAINTS where Area='"+Area+"' AND Location='"+Location+"' AND Telephone='"+Telephone+"' AND Description='"+Description+"' AND Comments='"+Comments+"';");
        ResultSet rs = pst.executeQuery();  
        assertTrue(rs.next());
            
    }
    
}
