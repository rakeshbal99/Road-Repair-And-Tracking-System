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
public class WorkDoneTest {
    
    public WorkDoneTest() {
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
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/CEMENT_USED.txt"));
        int CEMENT_USED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/SAND_TRIPS_USED.txt"));
        int SAND_TRIPS_USED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/WATER_USED.txt"));
        int WATER_USED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/LABOURERS_USED.txt"));
        int LABOURERS_USED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/CEMENT_REQUIRED.txt"));
        int CEMENT_REQUIRED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/SAND_TRIPS_REQUIRED.txt"));
        int SAND_TRIPS_REQUIRED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/WATER_REQUIRED.txt"));
        int WATER_REQUIRED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/LABOURERS_REQUIRED.txt"));
        int LABOURERS_REQUIRED = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/ComplaintID.txt"));
        int ComplaintID = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/PercentDone.txt"));
        int PercentDone = Integer.parseInt(br.readLine());
        br = new BufferedReader(new FileReader("/home/rakesh/RRTS/Area.txt"));
        String Area = br.readLine();
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("select * from WORK where LABOURERS_USED="+LABOURERS_USED+" AND WATER_USED="+WATER_USED+" AND CEMENT_USED="+CEMENT_USED+" AND SAND_TRIPS_USED="+SAND_TRIPS_USED+ " AND LABOURERS_REQUIRED="+LABOURERS_REQUIRED+" AND WATER_REQUIRED="+WATER_REQUIRED+" AND CEMENT_REQUIRED="+CEMENT_REQUIRED+" AND SAND_TRIPS_REQUIRED="+SAND_TRIPS_REQUIRED+" AND ComplaintID="+ComplaintID+" AND PercentDone="+PercentDone+" AND Area='"+Area+"';" );
        ResultSet rs = pst.executeQuery();  
        assertTrue(rs.next());
            
    }
}
