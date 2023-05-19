using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite.Forms
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string usersInfo = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["manager"] == null || (bool)Session["manager"] == false)
            {
                Session["permission"] = 2; // קוד שגיאה להיעדר הרשאת ניהול
                Response.Redirect("/Errors.aspx");
            }

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            string dbName = "Database.mdf", selectQuery;
            if (DblCategory.SelectedValue == "1")
            {
                selectQuery = "SELECT * FROM tbUSers";// שאילתא לקבלת כל המשתמשים ללא כל סינון
                usersInfo = MyAdoHelper.printDataTable(dbName, selectQuery);
            }
            if (DblCategory.SelectedValue == "2")
            {
                selectQuery = "SELECT * FROM tbUsers WHERE (mail LIKE '%@gmail%')"; //שליפת כל המשתמשים שתיבת המייל שלהם של ג'מייל 
                usersInfo = MyAdoHelper.printDataTable(dbName, selectQuery);
            }

            if (DblCategory.SelectedValue == "4")
            {
                selectQuery = "SELECT * FROM tbUsers WHERE admin='true'";// שליפת כל המשתמשים שניתנה להם הרשאת מנהל 
                usersInfo = MyAdoHelper.printDataTable(dbName, selectQuery);
            }

            if (DblCategory.SelectedValue == "5")
            {
                selectQuery = "SELECT * FROM tbUsers WHERE (phone LIKE '08%')"; // שליפת משתמשים שקידומת מספר הטלפון שלהם היא 08
                usersInfo = MyAdoHelper.printDataTable(dbName, selectQuery);
            }


        }
    }
}