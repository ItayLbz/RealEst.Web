using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ItayWebsite.Forms
{
    public partial class UpDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.Form["userName"];
            string password = Request.Form["password"];
            string dbName = "Database.mdf";
            string tableName = "tbUsers";
            string sql="select * from "+ tableName + " where userName='" + userName+ "'";
            if (Request.Form["cbUserName"]!=null && Request.Form["cbUserName"]=="on"&& Request.Form["cbPassword"]!=null&&Request.Form["cbPassword"]=="on")
            {
                if (MyAdoHelper.IsExist(dbName,sql))
                {
                    lblErrorMsg.Text = "שם המשתמש תפוס. בחר שם משתמש אחר בבקשה";
                }
                else
                {
                    sql = "update tbUsers set userName='" + userName + "', password='" + password + "'" + " where userName='" + Session["userName"] + "'";
                    int row = MyAdoHelper.RowsAffected(dbName, sql);
                    if (row!=0)
                    {
                        lblErrorMsg.Text = "העדכון בוצע בהצלחה"; 
                    }
                    else
                    {
                        lblErrorMsg.Text = "העדכון נכשל. יש לנסות שוב";
                    }
                }
            }
            else if (Request.Form["cbPassword"] != null && Request.Form["cbPassword"] == "on")
            {
                sql = "update tbUsers set[password]='" + password + "'" + " where userName='" + Session["userName"] + "'";
                int row = MyAdoHelper.RowsAffected(dbName, sql);
                if (row != 0)
                {
                    lblErrorMsg.Text = "העדכון בוצע בהצלחה";
                }
                else
                {
                    lblErrorMsg.Text = "העדכון נכשל. יש לנסות שוב";
                }
            }
            else if (Request.Form["cbUserName"] != null && Request.Form["cbUserName"] == "on")
            {
                if (MyAdoHelper.IsExist(dbName, sql))
                {
                    lblErrorMsg.Text = "שם המשתמש תפוס. בחר שם משתמש אחר בבקשה";
                }
                else
                {
                    sql = "update tbUsers set[userName]='" + userName + "'" + " where userName='" + Session["userName"] + "'";
                    int row = MyAdoHelper.RowsAffected(dbName, sql);
                    if (row != 0)
                    {
                        lblErrorMsg.Text = "העדכון בוצע בהצלחה";
                    }
                    else
                    {
                        lblErrorMsg.Text = "העדכון נכשל. יש לנסות שוב";
                    }
                }
            }
        }
    }
}