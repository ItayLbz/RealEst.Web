using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite
{
    public partial class Errors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["permission"] == 1)
            {
                lblErrorsMsg.Text = "רק משתמשים רשומים מורשים לצפות בדף זה";
            }
            else if ((int)Session["permission"] == 2)
            {
                lblErrorsMsg.Text = "רק משתמשים בעלי הרשאת ניהול מורשים לצפות בדף זה";
            }
        }
    }
}