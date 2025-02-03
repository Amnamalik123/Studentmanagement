using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website1
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            // Wire up the button click event handler
            //  btn.Click += btn_Click;

            // Check for error parameter
            if (!string.IsNullOrEmpty(Request.QueryString["error"]))
            {
                // Display error message
                // For example, you can use JavaScript to display an alert
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid username or password.');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user = Request.Form["username"];
            string pass = Request.Form["password"];

            if (user == "Amnamalik" && pass == "7262")
            {
                Response.Redirect("Admindash.aspx");
            }
            else
            {
                // Redirect back to the login page with an error message
                string script = "alert('Invalid username or password.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }

    }
}