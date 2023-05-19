using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["usersCounter"] = 0;
        }
        protected void logOff_Click(object sender, EventArgs e)
        {
            Application["userCounter"] = (int)Application["userCounter"] - 1;
            Session.Abandon();
            Response.Redirect("/HomePage.aspx");
        }
    }
}