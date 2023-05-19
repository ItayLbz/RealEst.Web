using System;
using System.Data;
using System.Configuration;
//using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyAdoHelper
/// פעולות עזר לשימוש במסד נתונים  מסוג 
/// SQL SERVER
///  App_Data המסד ממוקם בתקיה O
/// </summary>

public class MyAdoHelper
{
	public MyAdoHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //**************************************************************
    public static SqlConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/");//מיקום מסד בפורוייקט
        path += fileName;
        //string path = HttpContext.Current.Server.MapPath("App_Data/" + fileName);//מאתר את מיקום מסד הנתונים מהשורש ועד התקייה בה ממוקם המסד
        string connString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename ='|DataDirectory|\Database.mdf'; Integrated Security = True";
        SqlConnection conn = new SqlConnection(connString);
        return conn;
    }
    //**************************************************************
    /// <summary>
    /// To Execute update / insert / delete queries
    ///  הפעולה מקבלת שם קובץ ומשפט לביצוע ומבצעת את הפעולה על המסד
    /// </summary>
    public static void  DoQuery(string fileName, string sql)//הפעולה מקבלת שם מסד נתונים ומחרוזת מחיקה/ הוספה/ עדכון
    //ומבצעת את הפקודה על המסד הפיזי
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        com.ExecuteNonQuery();
        com.Dispose();
        conn.Close();
    }
    //**************************************************************
    /// <summary>
    /// To Execute update / insert / delete queries
    ///  הפעולה מקבלת שם קובץ ומשפט לביצוע ומחזירה את מספר השורות שהושפעו מביצוע הפעולה
    /// </summary>
    public static int RowsAffected(string fileName, string sql)//הפעולה מקבלת מסלול מסד נתונים ופקודת עדכון
    //ומבצעת את הפקודה על המסד הפיזי
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        int rowsA = com.ExecuteNonQuery();
        conn.Close();
        return rowsA;
    }
    //**************************************************************
    /// <summary>
    /// הפעולה מקבלת שם קובץ ומשפט לחיפוש ערך - מחזירה אמת אם הערך נמצא ושקר אחרת
    /// </summary>
    //הפעולה מקבלת שם קובץ ומשפט בחירת נתון ומחזירה אמת אם הנתונים קיימים ושקר אחרת
    public static bool IsExist(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        bool found;
        found=(bool) data.Read();// אם יש נתונים לקריאה יושם אמת, אחרת שקר - הערך קיים במסד הנתונים
       
        conn.Close();
        return found;
    }
    //**************************************************************
    public static DataTable ExecuteDataTable(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql,conn);
        DataTable dt = new DataTable();
        tableAdapter.Fill(dt);
        return dt;
    }
    //**************************************************************
    public static void ExecuteNonQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand command = new SqlCommand(sql, conn);
        command.ExecuteNonQuery();
        conn.Close();
    }
    //**************************************************************
    public static string printDataTable(string fileName, string sql)
    { 
        //פעולה זו הותאמה להצגת הנתונים הקיימים בעמודות הבאות בלבד: 2,3,4 
        DataTable dt = ExecuteDataTable(fileName, sql);
        string usersList = "";

        int length = dt.Rows.Count;
        if (length > 0)
        {
            usersList += "<center><table border='2'>";
            usersList += "<tr>";
            usersList += "<th>שם פרטי</th>";
            usersList += "<th>שם משפחה</th>";
            usersList += "<th>אמייל</th>";
            usersList += "<th>טלפון</th>";
            usersList += "</tr>";
        }
        for (int i = 0; i <length; i++)
        {
            usersList += "<tr>";
            usersList += "<td>" + dt.Rows[i]["firstName"] + "</td>";
            usersList += "<td>" + dt.Rows[i]["lastName"] + "</td>";
            usersList += "<td>" + dt.Rows[i]["mail"] + "</td>";
            usersList += "<td>" + dt.Rows[i]["phone"] + "</td>";
            usersList += "</tr>";
        }
        usersList += "</center></table>";     
        return usersList;
    }
    //**************************************************************
    public static string findFirstName(string fileName, string sql)
    { //פעולה שתפקידה להחזיר את שמו הפרטי של המשתמש
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, sql);
        conn.Close();
        return (string)table.Rows[0]["firstName"];//מטבע הדברים השאילתא החזירה שורה אחת שעונה על התנאים
    }
    //**************************************************************
    public static bool IsAdmin(string fileName, string sql)
    { //פעולה שתפקידה להחזיר את שמו הפרטי של המשתמש
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, sql);
        conn.Close();
        return (bool)table.Rows[0]["admin"];//מטבע הדברים השאילתא החזירה שורה אחת שעונה על התנאים
    }
    //**************************************************************
   
}
