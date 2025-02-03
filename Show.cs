using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace proj

{
    public class Show
    {
        public void GetUsers(GridView gridview)
        {
            SqlConnection con = ConnectionProvider.GetConnection() ;
            string query = "select * from tblresult";
             con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            gridview.DataSource = rdr;
            gridview.DataBind();
            con.Close();
        }
    }
   
}