<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Guest.aspx.cs" Inherits="ItayWebsite.Info.Guest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title>אודות </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">

    <br />
    <br />
    <br />
    <section id="guestform">
        <%-- spacing --%>
        <br />
        <br />

        <%-- spacing --%>

        <%--        <h1 style="text-align: center">ברוך הבא אורח יקר</h1>
        <h2 style="font-size: x-large; text-align: center">אזור להצגת מידע כללי על האתר והאפשרויות שהוא מציע</h2>--%>

        <div class="container-fluid text-right mt-5 py-5">
            <h1 style="font-family: 'Secular One'" class="font-weight-bold">טוב שיש את קבוצת אלבז מאחוריך</h1>
            <br />
            <p style="font-family: simpleclm; font-size: 20px">
                קבוצת אלבז כבר כמה שעות פועלת למען האדם הפשוט שתמיד חלם לגור בבית חלומותיו. 
                <br />
                איך שחז"ל נוהגים לומר: "הרבה חלומות נראים במבט ראשון בלתי ניתנים להגשמה אך עם קבוצת אלבז וקצת הרבה כסף הם הופכים לבלתי נמנעים להגשמה"
                <br />
                כחברה מובילה במשק הנדל"ן הישראלי מאתמול בבוקר, תפקידנו לספק לתושבי ואזרחי מדינת ישראל את מה שהם מחפשים ברמה הגבוהה ביותר
                <br />
                אנו מוצאים ומרכזים את הצעות המחיר ופרטי דירת החלומות בשביל הלקוח, ומשאירים את העבודה הקלה לאדם וכרטיס האשראי שלו.
                <br />
                אנו מבטיחים את האיכות הטובה ביותר תוך מיון קפדני כדי שהלקוח יוכל סוף כל סוף להגשים את חלומותיו כי כל לקוח שיוצא מרוצה אנו מרוצים כפליים!
            </p>
            
             <p style="font-family: simpleclm; font-size: 35px; font-weight:bold; color:#5a8694">קבוצת אלבז תמיד לשירותך</p>
        </div>
    </section>

    <footer class="mt-3 py-3 container-fluid">
        <div class="row">
            <div class="footer-one col-lg-3 col-md-6 col-12 col" style="text-align: center"></div>
                        <div class="footer-one col-lg-3 col-md-6 col-12 col" style="direction: rtl; text-align: center">
                <img src="/Logos/elbaz%20grup%20new.png" style="height: 120px; width: 120px;" />
                <p class="pt-3" style="direction: rtl">קבוצת אלבז כבר כמה שעות פועלת למען האדם הפשוט שתמיד חלם לגור בבית חלומותיו. איך שחז"ל נוהגים לומר: "הרבה חלומות נראים במבט ראשון בלתי ניתנים להגשמה אך עם קבוצת אלבז וקצת הרבה כסף הם הופכים לבלתי נמנעים להגשמה" </p>
            </div>
            
            <div class="footer-one col-lg-3 col-md-6 col-12 col" style="text-align: center">
                <h5 class="pb-2">צרו קשר</h5>
                <div>
                    <h6>כתובת</h6>
                    <p>סמטה פלונית 12, תל אביב</p>
                </div>
                <div>
                    <h6>מס טלפון</h6>
                    <p>08-4718523</p>
                </div>
                <div>
                    <h6>כתובת מייל</h6>
                    <p>elbaz.group@verylegit.com</p>
                </div>
            </div>
            

        </div>
<%--        <div class="copyright mt-5">
            <div class="row container mx-autp">

                <div class="col-lg-3 col-md-6 col-12 col">
                    <img src="/Logos/pay.png" />
                </div>
                <div class="col-lg-4 col-md-6 col-12 col" style="text-align:left">
                    <p>
                        כל הזכויות שמורות לקבוצת אלבז ©
                    </p>
                </div>
            </div>
        </div>--%>
    </footer>
</asp:Content>



