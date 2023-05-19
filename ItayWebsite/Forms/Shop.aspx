<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="ItayWebsite.Forms.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title>קטלוג דירות</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">

    <style>
        .product img {
            width: 100%;
            height: auto;
            box-sizing: border-box;
            object-fit: cover;
        }
    </style>

    <section id="featured" class="my-5 py-5">
        <div class="container text-center mt-5 py-5">
            <h1 style="font-family: 'Secular One'" class="font-weight-bold">במה תבחרו?</h1>
            <hr class="mx-auto" />
            <p style="font-family: simpleclm; font-size: 20px">קטלוג הדירות המהממות שלנו מחייב שתמצאו את הדירה המתאימה לכם</p>
        </div>
        <%-- Section1 --%>
        <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/showerbed/showerbed%20(2).jpg" />
                <h5 class="p-name">דירת סטודיו בעיצוב מינימליסטי וחדשני</h5>
                <h4 class="p-price">₪2400 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
                <a href="/Forms/ProductPage.aspx">
                    <img class="img-fluid mb-3" src="/Houses/duplex/duplex.jpg" />
                </a>
                <h5 class="p-name">דופלקס רב קומות משגע</h5>
                <h4 class="p-price">₪3600 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>


            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/modernDesign/modernlivingroom.jpg" />
                <h5 class="p-name">דירת קונספט מול תחנת הרכבת המדהימה של עפולה</h5>
                <h4 class="p-price">₪1850 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>


            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/abulafia/abulafia%20(2).jpg" />
                <h5 class="p-name">דירה מפנקת מטבח גדול עם ריהוט משגע</h5>
                <h4 class="p-price">₪2500 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <%-- Section2 --%>
            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/living%20room%20kitchen/livingroomkitchen3.jpg" />
                <h5 class="p-name">דירת שני חדרים מרעננת בעלת מיקום מצוין</h5>
                <h4 class="p-price">₪2900 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/stairs/stair.jpg" />
                <h5 class="p-name">דירה בקומת קרקע עם סט מדרגות משגע</h5>
                <h4 class="p-price">₪4200 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/lebanon/lebanonlivingroom.jpg" />
                <h5 class="p-name">דירה גדולה מהחיים למשפחה חמה ואוהבת</h5>
                <h4 class="p-price">₪1900 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <img class="img-fluid mb-3" src="/Houses/balfur/balfur2.jpg" />
                <h5 class="p-name">דירה ענקית ברחוב בלפור המהמם</h5>
                <h4 class="p-price">₪2500 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>
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
