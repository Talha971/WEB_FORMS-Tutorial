using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Management.Application_State
{
    public partial class app_state1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            //Application.Add("user", UserTextBox.Text);  
            Application["user"] = UserTextBox.Text;
            Response.Redirect("app_state2.aspx");
        }
    }
}