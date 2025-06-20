using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostBack
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                // This code runs only on the first page load, not on postbacks
                Response.Write("Welcome to the page!");
                addListBoxItems();
            }
            else
            {
                // This code runs on every postback
                Response.Write("You have posted back to the server.");
            }
            void addListBoxItems()
            {
                ListBox1.Items.Add("Item 1");
                ListBox1.Items.Add("Item 2");
                ListBox1.Items.Add("Item 3");
            }
        }
    }
}