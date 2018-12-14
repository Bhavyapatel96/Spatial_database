
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author bhavy
 */
public class Populate {

    private static String hostname = "";
    private static int port = 0;
    private static String db = "";
    private static String username = "";
    private static String pwd = "";

    public static void main(String[] args) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            File f = new File(args[0]);
            Scanner sc = new Scanner(f);
            while (sc.hasNextLine()) {
                hostname = sc.nextLine();
                port = Integer.parseInt(sc.nextLine());
                db = sc.nextLine();
                username = sc.nextLine();
                pwd = sc.nextLine();
            }
            String s = "jdbc:mysql://";
            Connection conn = DriverManager.getConnection(s + hostname + ":" + port + "/" + db, username, pwd);
            PreparedStatement st = conn.prepareStatement("delete from officer");
            st.executeUpdate();
            PreparedStatement st1 = conn.prepareStatement("delete from zone");
            st1.executeUpdate();
            PreparedStatement st2 = conn.prepareStatement("delete from route");
            st2.executeUpdate();
            PreparedStatement st3 = conn.prepareStatement("delete from incident");
            st3.executeUpdate();

            InsertintoZone(conn, args[1]);
            InsertintoOfficer(conn, args[2]);
            InsertintoRoute(conn, args[3]);
            InsertintoIncident(conn, args[4]);
            conn.close();
        } catch (FileNotFoundException d) {
            System.out.println("File db.properties not found.");
        } catch (ClassNotFoundException c) {
            System.out.println("Unable to load driver");
        } catch (SQLException ex) {
            System.out.println(ex);
        }

    }

    public static void InsertintoIncident(Connection conn, String file) {

        try {
            File f = new File(file);
            Scanner sc = new Scanner(f);
            while (sc.hasNextLine()) {

                String s1 = sc.nextLine();
                String s[] = s1.split(",");
                int incidentID = Integer.parseInt(s[0].trim());
                String incidentType = s[1].trim();
                String location = s[2].trim() + " " + s[3].trim();
                PreparedStatement stat = conn.prepareStatement("insert into incident values (?,?,ST_GeomFromText('POINT(" + location + ")'));");
                stat.setInt(1, incidentID);
                stat.setString(2, incidentType);
                stat.executeUpdate();
            }
        } catch (SQLException ex) {
            System.out.println("Error inserting values in incident table. Please check your incident.txt and run again.");
            System.out.println("Sql error: " + ex);
        } catch (NumberFormatException n) {
            System.out.println("Error inserting values in incident table. Please check your incident.txt and run again.");
        } catch (FileNotFoundException d) {
            System.out.println("File incident.txt not found");
        }

    }

    public static void InsertintoRoute(Connection conn, String file) {

        try {
            File f = new File(file);
            Scanner sc = new Scanner(f);
            while (sc.hasNextLine()) {

                String s1 = sc.nextLine();
                String s[] = s1.split(",");
                int routeID = Integer.parseInt(s[0].trim());
                int vertex = Integer.parseInt(s[1].trim());
                String startpt = s[2].trim() + " " + s[3].trim();
                int j = 2;

                String location = "";
                for (int i = 0; i < vertex; i++) {
                    location = location + s[j].trim() + " " + s[j + 1].trim();
                    j = j + 2;
                    location = location + ",";
                }
                location = location.substring(0, location.length() - 1);
                PreparedStatement stat = conn.prepareStatement("insert into route values (?,?,ST_GeomFromText('LINESTRING(" + location + ")'));");
                stat.setInt(1, routeID);
                stat.setInt(2, vertex);
                stat.executeUpdate();
            }
        } catch (SQLException ex) {
            System.out.println("Error inserting values in route table. Please check your route.txt and run again.");
            System.out.println("Sql error: " + ex);

        } catch (NumberFormatException n) {
            System.out.println("Error inserting values in route table. Please check your route.txt and run again.");
        } catch (FileNotFoundException d) {
            System.out.println("File route.txt not found");
        }

    }

    public static void InsertintoZone(Connection conn, String file) {

        try {
            File f = new File(file);
            Scanner sc = new Scanner(f);
            while (sc.hasNextLine()) {

                String s1 = sc.nextLine();
                String s[] = s1.split(",");
                int zoneid = Integer.parseInt(s[0].trim());
                String name = s[1].trim();
                int squadnum = Integer.parseInt(s[2].trim());
                int vertex = Integer.parseInt(s[3].trim());
                String startpt = s[4].trim() + " " + s[5].trim();
                int j = 4;
                String location = "";
                for (int i = 0; i < vertex; i++) {
                    location = location + s[j].trim() + " " + s[j + 1].trim();
                    j = j + 2;
                    location = location + ",";
                }
                location = location + startpt;
                PreparedStatement stat = conn.prepareStatement("insert into zone values (?,?,?,?,ST_GeomFromText('POLYGON((" + location + "))'));");
                stat.setInt(1, zoneid);
                stat.setString(2, name);
                stat.setInt(3, squadnum);
                stat.setInt(4, vertex);
                stat.executeUpdate();
            }
        } catch (SQLException ex) {
            System.out.println("Error inserting values in zone table. Please check your zone.txt and run again.");
            System.out.println("Sql error: " + ex);

        } catch (NumberFormatException n) {
            System.out.println("Error inserting values in zone table. Please check your zone.txt and run again.");
        } catch (FileNotFoundException d) {
            System.out.println("File zone.txt not found");
        }

    }

    public static void InsertintoOfficer(Connection conn, String file) {

        try {
            File f = new File(file);

            Scanner sc = new Scanner(f);
            while (sc.hasNextLine()) {

                String s1 = sc.nextLine();
                String s[] = s1.split(",");
                int zoneid = Integer.parseInt(s[0].trim());
                String name = s[1].trim();
                int squadnum = Integer.parseInt(s[2].trim());
                String location = s[3].trim() + " " + s[4].trim();
                PreparedStatement stat = conn.prepareStatement("insert into officer values (?,?,?,ST_GeomFromText('POINT(" + location + ")'));");
                stat.setInt(1, zoneid);
                stat.setString(2, name);
                stat.setInt(3, squadnum);
                stat.executeUpdate();
            }
        } catch (SQLException ex) {
            System.out.println("Error inserting values in officer table. Please check your officer.txt and run again.");
            System.out.println("Sql error: " + ex);

        } catch (NumberFormatException n) {
            System.out.println("Error inserting values in officer table. Please check your officer.txt and run again.");
        } catch (FileNotFoundException d) {
            System.out.println("File officer.txt not found");
        }
    }

}
