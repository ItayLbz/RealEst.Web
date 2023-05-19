using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite.Forms
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = Request.Form["username"];
                string password = Request.Form["password"];
                string firstName = Request.Form["firstName"];
                string lastName = Request.Form["lastName"];
                string phone = Request.Form["phone"];
                string mail = Request.Form["mail"];
                bool gender = Request.Form["radioGender"]=="זכר";
                string dbName = "Database.mdf";
                string sql= "select * from tbUsers where userName='" + userName + "'";

                if (MyAdoHelper.IsExist(dbName, sql)) 
                {
                    lblErrorMsg.Text = "שם המשתמש תפוס. בבקשה בחר שם משתמש חדש";
                }
                else
                {
                    sql = "INSERT INTO tbUsers (firstName,lastName,password,userName,phone,gender,mail,admin) VALUES ('" + firstName + "','" + lastName + "','" + password + "','" + userName + "','" + phone + "','" + gender + "','" + mail + "','0')";
                    int row = MyAdoHelper.RowsAffected(dbName, sql);
                    if (row!=0)
                    {
                        lblErrorMsg.Text = "ההרשמה בוצעה בהצלחה. כעת יש להיכנס עם שם המשתמש והסיסמה שבחרת";
                    }
                    else
                    {
                        lblErrorMsg.Text = "ההרשמה הסתיימה ללא הצלחה. יש לנסות שוב";
                    }
                }
            }
        }
    }
}