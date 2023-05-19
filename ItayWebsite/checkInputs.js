function checkUserName()
{
    var userName = document.getElementById('user').value;
    var errorMsg = "";//יכיל מידע על השגיאות
    var capitalLetter = 0; //מונה אותיות A-z

    if (userName.length<2||userName.length>5)
    {
        errorMsg = "Enter between 2 and 5 characters";
    }
    for (var i = 0; i < userName; i++)
    {
        if (userName.charAt(i) >= 'A' && userName.charAt(i) <= 'Z')
        {
            capitalLetter = 1;
        }
    }
    if (capitalLetter==0)
    {
        errorMsg+="\n The username must contain at least one letter A-Z"
    }
    if (errorMsg.length>0)
    {
        alert(errorMsg);
        return false;//החזרת ערך זה תמנע פניה לצד השרת עם נתונים שגויים מבחינה טכנית
    }
    return true;// היות והנתונים תקינים נאפשר פניה לשרת לצורך בדיקה אם הם נמצאים בטבלת המשתמשים
}