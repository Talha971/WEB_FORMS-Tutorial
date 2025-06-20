using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostBack
{
    public partial class State_Management : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void restoreButton_Click(object sender, EventArgs e)
        {
            userTextBox.Text = ViewState["user"] != null ? ViewState["user"].ToString() : string.Empty;
            passTextBox.Text = ViewState["pass"] != null ? ViewState["pass"].ToString() : string.Empty;
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            ViewState["user"] = userTextBox.Text;
            ViewState["pass"] = passTextBox.Text;

            userTextBox.Text = string.Empty;
            passTextBox.Text = string.Empty;
        }
    }
}