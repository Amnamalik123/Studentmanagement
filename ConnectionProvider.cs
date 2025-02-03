using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.CompilerServices;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
namespace proj
{
    public class ConnectionProvider
    {

        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\amnas\Documents\SMS.mdf;Integrated Security=True;Connect Timeout=30";

        public static SqlConnection GetConnection()
        {
            SqlConnection con = new SqlConnection(connectionString);
            return con;
        }
    }
}