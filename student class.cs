using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using proj;
using System.Data;
using System.Web.UI.HtmlControls;

public class Student
{
    public void Addstd(string n, string g, string p, string d, int y)
    {
        using (SqlConnection con = ConnectionProvider.GetConnection())
        {
            string query = "INSERT INTO tblstd (name, gender, phone, department, year) VALUES (@name, @gender, @phone, @department, @year)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", n);
            cmd.Parameters.AddWithValue("@gender", g);
            cmd.Parameters.AddWithValue("@phone", p);
            cmd.Parameters.AddWithValue("@department", d);
            cmd.Parameters.AddWithValue("@year", y);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public void DeleteStd(int id)
    {
        using (SqlConnection con = ConnectionProvider.GetConnection())
        {
            string query = "DELETE FROM tblstd WHERE id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public void UpdateStudent (int i,string n, string g, string p, string d, int y)
    {
        using (SqlConnection con = ConnectionProvider.GetConnection())
        {
            string query = "UPDATE tblstd SET name=@name,gender=@gender, phone=@phone, department=@department, year=@year WHERE id=@id";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", i);
            cmd.Parameters.AddWithValue("@name", n);
            cmd.Parameters.AddWithValue("@gender", g);
            cmd.Parameters.AddWithValue("@phone", p);
            cmd.Parameters.AddWithValue("@department", d);
            cmd.Parameters.AddWithValue("@year", y);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}

