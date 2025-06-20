using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Management.Session_State
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome" + Session["user"].ToString());
            }
            else
            {
                Response.Redirect("session_state1.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null; // Clear the session variable
                Response.Redirect("session_state1.aspx"); // Redirect to the first page
            }
           
        }
    }
}