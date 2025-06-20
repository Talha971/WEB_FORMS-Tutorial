using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Management.Query_String
{
    public partial class query_string3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("query_string2.aspx?id=" + Server.UrlEncode(IDTextBox.Text) + "&name=" + Server.UrlEncode(NAMETextBox.Text) + "&age=" + Server.UrlEncode(AGETextBox.Text));
        }
    }
}