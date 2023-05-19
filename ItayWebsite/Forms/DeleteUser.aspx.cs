using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite.Forms
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = Request.Form["userName"];
                string password = Request.Form["password"];
                string dbName = "Database.mdf";
                string sql = "delete from tbUsers where userName='" + userName + "' and password='" + password + "'";
                int row = MyAdoHelper.RowsAffected(dbName, sql);
                if (row != 0)
                {
                    lblErrorMsg.Text = "המשתמש הוסר בהצלחה";
                }
                else
                {
                    lblErrorMsg.Text = "הייתה בעיה בהסרת המשתמש, נסה שוב";
                }


            }
        }
    }
}