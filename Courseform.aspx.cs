using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace proj
{
    public partial class Courseform : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            string title = this.title.Value;
            string credit = this.credit.Value;
            string semester = this.semester.Value;
            Course C = new Course();
            C.Addcor(title, credit, semester);
            this.title.Value = "";
            this.credit.Value = "";
            this.semester.Value = "";
            string script = "alert('Data successfully inserted!');";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);


        }

       
    }
}

