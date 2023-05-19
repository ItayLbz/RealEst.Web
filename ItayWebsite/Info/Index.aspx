<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ItayWebsite.Info.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <br />
    <br />
    <br />
    <br />
    <section class="my-5 py-5">
        <div style="text-align: center">
            <h2 style="color: black; direction: rtl; font-family: simpleclm">ברוכה הבאה  <%=Session["firstName"] %>
            </h2>
        </div>
        
        <%
            if (Session["userName"] == null)
            {
                Response.Redirect("/HomePage.aspx");
            }
        %>
        <div class="container text-center mt-3 py-3">
            <h1 style="font-family: 'Secular One'" class="font-weight-bold">מבצע בלעדי ללקוחות רשומים ⚠️</h1>
            <hr class="mx-auto" />
            <p style="font-family: simpleclm; font-size: 20px">כאות תודה על הצטרפותך למשפחת אלבז, דירה מפנקת עכשיו במחיר טוב מאף פעם! דירת חלומותיך במרחק נגיעה!</p>
        </div>

       <div>
            <div class="product text-center col-lg-3 col-md-4 col-12 center">
                <a href="/Forms/Shop.aspx">
                <img class="img-fluid mb-3" src="/Houses/elisheva/elishevalivingroom.jpg"  />
                 </a>
                <h5 class="p-name">דירת החדר בפינה של הפינה מהשיר המקורי של דודו טסה!</h5>
                <h4 class="p-price">₪667412 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>
        </div>

        <%--<img src="../Images/Sahara%20Desert.jpg" style="width: 50%; height: 60%;" class="center" />--%>
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
