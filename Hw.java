
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author bhavy
 */
public class Hw {

    private static String hostname = "";
    private static int port = 0;
    private static String db = "";
    private static String username = "";
    private static String pwd = "";

    /**
     * @param args the command line arguments
     */
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
            Connection conn = DriverManager.getConnection(s + hostname+ ":" + port + "/" + db, username, pwd);

            String query = args[1];
            switch (query) {
                case "q1":
                    query1(conn, args);
                    break;
                case "q2":
                    query2(conn, args);
                    break;
                case "q3":
                    query3(conn, args);
                    break;
                case "q4":
                    query4(conn, args);
                    break;
                default:
                    System.out.println("Please check your command line argument and run again");
                    break;
            }

            conn.close();
        } catch (ClassNotFoundException x) {
            System.out.println("Unable to load driver.");
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (FileNotFoundException f) {
            System.out.println("File db.properties not found");
        }
    }

    public static void query1(Connection conn, String[] args) {
        try {
            int count = Integer.parseInt(args[2]);
            String params = "";
            int j = 5;
            String start_pt = args[3] + " " + args[4] + ",";
            String point = "";
            params = params + start_pt;
            for (int i = 1; i < count; i++) {
                point = args[j] + " " + args[j + 1] + ",";
                j = j + 2;
                params = params + point;
            }
            params = params + start_pt;
            params = params.substring(0, params.length() - 1);

            String sql = "SET @f=ST_GeomFromText('POLYGON((" + params + "))'); ";
            PreparedStatement step1 = conn.prepareStatement(sql);
            step1.executeUpdate();

            String step2 = "select ID,ST_asTexT(Location) as Location,Type from incident where st_contains(@f,Location) order by ID";
            PreparedStatement st = conn.prepareStatement(step2);

            ResultSet rs = st.executeQuery();
            int id;
            String location;
            String type;
            System.out.println("ID \t Location \t\t Type");

            while (rs.next()) {
                id = rs.getInt("ID");
                location = rs.getString("Location").substring(5);
                type = rs.getString("Type").substring(1, rs.getString("Type").length() - 1);
                System.out.println(id + "\t" + location + "\t " + type);
            }
        } catch (SQLException ex) {
            System.out.println("You have an error in your SQL query. Please check your query and try again!!");
        } catch (NumberFormatException d) {
            System.out.println("Error with the input. Please check your arguments and try again.");
        }
    }

    public static void query2(Connection conn, String[] args) {
        try {
            int x = Integer.parseInt(args[2]);
            int x1 = Integer.parseInt(args[3]);
            String sql = "select o.BadgeID, Round(st_Distance_sphere(o.Location,i.Location)) as Distance, o.Name from officer as o, incident as i where i.ID=" + x + " and st_Distance_sphere(o.Location,i.Location) < " + x1 + " order by Distance";
            PreparedStatement st = conn.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            int id;
            double distance;
            String name;
            System.out.println("ID \t Distance \t Name");

            while (rs.next()) {
                id = rs.getInt("BadgeID");
                distance = rs.getDouble("Distance");
                name = rs.getString("Name").substring(1, rs.getString("Name").length() - 1);
                System.out.println(id + "\t " + distance + "\t\t " + name);
            }
        } catch (SQLException ex) {
            System.out.println("You have an error in your SQL query. Please check your query and try again!!");
        } catch (NumberFormatException d) {
            System.out.println("Error with the input. Please check your arguments and try again.");
        }
    }

    public static void query3(Connection conn, String[] args) {
        try {
            int x = Integer.parseInt(args[2]);
            String sql1 = "select Name from zone where SquadID=" + x;
            PreparedStatement st = conn.prepareStatement(sql1);
            ResultSet rs = st.executeQuery();
            String z;

            while (rs.next()) {
                z = rs.getString("Name");
                System.out.println("Squad is now patrolling: " + z);
            }

            String sql_all = "select officer.BadgeID,officer.Name from officer,zone where officer.SquadID=" + x + " and zone.SquadID=" + x + "  order by BadgeID";
            PreparedStatement all = conn.prepareStatement(sql_all);
            ResultSet r2 = all.executeQuery();

            String sql_contains = "select officer.BadgeID,officer.Name from officer,zone where officer.SquadID=" + x + " and zone.SquadID=" + x + " and st_contains(zone.ZoneMap,officer.Location) order by BadgeID";
            PreparedStatement contains = conn.prepareStatement(sql_contains);
            ResultSet r3 = contains.executeQuery();

            List<Integer> inside = new ArrayList();
            while (r3.next()) {
                inside.add(r3.getInt("BadgeID"));
            }

            int id;
            String next;
            String name;
            System.out.println("ID \t IN/OUT  NAME");

            while (r2.next()) {
                id = r2.getInt("BadgeID");
                if (inside.contains(id)) {
                    next = "IN";
                } else {
                    next = "OUT";
                }
                name = r2.getString("Name").substring(1, r2.getString("Name").length() - 1);
                System.out.println(id + "\t " + next + "\t " + name);
            }
        } catch (SQLException ex) {
            System.out.println("You have an error in your SQL query. Please check your query and try again!!");
        } catch (NumberFormatException d) {
            System.out.println("Error with the input. Please check your arguments and try again.");
        }

    }

    public static void query4(Connection conn, String[] args) {
        try {
            int x = Integer.parseInt(args[2]);
            String sql = "select distinct z.ID,z.Name from zone as z, route as r where st_intersects(r.RouteMap, z.ZoneMap) and r.RouteNumber=" + x + " order by z.ID";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet r1 = ps.executeQuery();
            int id;
            String name;
            System.out.println("ID \t ZONE");

            while (r1.next()) {
                id = r1.getInt("ID");
                name = r1.getString("Name").substring(1, r1.getString("Name").length() - 1);
                System.out.println(id + "\t " + name);
            }
        } catch (SQLException ex) {
            System.out.println("You have an error in your SQL query. Please check your query and try again!!");
        } catch (NumberFormatException d) {
            System.out.println("Error with the input. Please check your arguments and try again.");
        }

    }

}
