using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace proj
{
    public partial class Studentform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\amnas\Documents\SMS.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = this.name.Value;
            string gender = this.gender.Value;
            string phone = this.phone.Value;
            string department = this.dep.Value;
            int year = Convert.ToInt32(this.year.Value);
            Student std = new Student();
            std.Addstd(name, gender, phone, department, year);
            this.name.Value = "";
            this.gender.Value = "";
            this.phone.Value = "";
            this.dep.Value = "";
            string script = "alert('Data successfully inserted!');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int stddel = Convert.ToInt32(id.Value); ;
            Student std = new Student();
            std.DeleteStd(stddel);

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(this.id.Value);
            string name = this.name.Value;
            string gender = this.gender.Value;
            string phone = this.phone.Value;
            string department = this.dep.Value;
            int year = Convert.ToInt32(this.year.Value);
            Student std = new Student();
            std.UpdateStudent(id, name, gender, phone, department, year);
            this.id.Value = "";
            this.name.Value = "";
            this.gender.Value = "";
            this.phone.Value = "";
            this.dep.Value = "";
            this.year.Value = "";

            string script = "alert('Data successfully updated!');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }
    }       
    }
       


     