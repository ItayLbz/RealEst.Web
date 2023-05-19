using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite.Forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = Request.Form["userName"];
                string password = Request.Form["password"];
                string dbName = "Database.mdf";
                string query = "select * from tbUsers where userName='" + userName + "'and password='" + password + "'";

                if (MyAdoHelper.IsExist(dbName, query))
                {
                    Session["manager"] = MyAdoHelper.IsAdmin(dbName, query);
                    Session["userName"] = userName;
                    Session["firstName"] = MyAdoHelper.findFirstName(dbName, query);
                    Response.Redirect("/Info/Index.aspx");
                    Application.Lock();
                    Application["usersCounter"] = (int)Application["usersCounter"] + 1;
                    Application.UnLock();
                }
                else
                    lblErrorMsg.Text="הוזנו נתונים שגויים";
            }


        }
    }
}