using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections.Specialized;
using proj;
using static System.Net.Mime.MediaTypeNames;
using System.ComponentModel;
using System.Drawing.Printing;
using System.Drawing;
using System.Reflection;
using System.Security.Policy;
using System.Web.UI;


class Course
{
      public void Addcor(string title, string credit, string sem)
    {
        using (SqlConnection con = ConnectionProvider.GetConnection())
        {
            string query = "INSERT INTO tblcourse (title, credit, semester) VALUES (@title, @credit, @semester)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Title", title);
            cmd.Parameters.AddWithValue("@credit", credit);
            cmd.Parameters.AddWithValue("@semester", sem);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    }






