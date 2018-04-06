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
public class PriorityTest {
    
    public PriorityTest() {
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
    public void priority() throws IOException, ClassNotFoundException, SQLException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/PRIORITY_ORDER.txt"));
        int PRIORITY_ORDER = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/CEMENT.txt"));
        int CEMENT = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/SAND_TRIPS.txt"));
        int SAND_TRIPS = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/WATER.txt"));
        int WATER = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/LABOURERS.txt"));
        int LABOURERS = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/ComplaintID.txt"));
        int ComplaintID = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Area.txt"));
        String Area = br.readLine();
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("select * from PRIORITY where ComplaintID="+ComplaintID+" AND LABOURERS="+LABOURERS+" AND WATER="+WATER+" AND CEMENT="+CEMENT+" AND PRIORITY_ORDER="+PRIORITY_ORDER+" AND SAND_TRIPS="+SAND_TRIPS+" AND Area='"+Area+"';");
        ResultSet rs = pst.executeQuery();  
        assertTrue(rs.next());
            
    }
    
}
