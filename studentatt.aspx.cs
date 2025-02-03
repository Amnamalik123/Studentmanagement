using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace proj
{
    public partial class studentatt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
   
                string name = row.Cells[1].Text;
                RadioButton status1 = (row.Cells[2].FindControl("Present") as RadioButton);
                RadioButton status2 = (row.Cells[2].FindControl("Absent") as RadioButton);
                string status = status1.Checked ? "Present" : "Absent";

                SaveAttendance( name, status);
            }
            Label1.Text = "Data has been saved successfully";
        }

        private void SaveAttendance( string name, string status)
        {
            string query = "INSERT INTO tblatt ( Name, Attendance) VALUES ( @Name, @Attendance)";
            string mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\amnas\\Documents\\SMS.mdf;Integrated Security=True;Connect Timeout=30";

            using (SqlConnection con = new SqlConnection(mycon))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Attendance", status);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
