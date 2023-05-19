<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="ItayWebsite.Forms.ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <style>
        .small-img-group {
            display: flex;
            justify-content: space-between;
        }

        .small-img-col {
            flex-basis: 30%;
            cursor: pointer;
        }

        .buy-btn {
            background: #5a8694;
            opacity: 1;
            transition: 0.3s all;
        }
    </style>



    <section class="container sproduct my-5 pt-5">
        <br />
        <br />
        <div class="row mt-5" style="direction: rtl; text-align: right">
            <div class="col-lg-5 col-md-12 col-12">
                <h6>קטלוג / דופלקס משגע</h6>
                <h3 class="py-3" style="font-family: simpleclm; font-weight: bold;">דופלקס רב קומות משגע בלב העיר</h3>
                <h2 style="font-family: Calibri; font-weight: bold; font-size: 35px">₪3600 לחודש</h2>
                <button class="buy-btn">ליצירת קשר</button>
                <h4 class="mt-4 mb-4">קצת על הדירה המהממת</h4>
                <span style="font-family: simpleclm">דירת דופלקס רב קומתית להשכרה ברחוב מרכזי ושקט בנווה צדק
                    <br />
                    מתאימה לזוגות / שלישיות / חמישיות / יחיד
                    <br />
                    ועד בית מדהים עם שכנים איכותיים מהאחוזון העליון
                    <br />
                    ריהוט יוקרתי שמגיע עם הבית ולובי מפואר עם פח בכניסה
                    <br />
                    כניסה מיידית בלי מילוי טפסים מיותרים

                </span>
            </div>

            <div class="col-lg-5 col-md-12 col-12">
                <img class="img-fluid w-100 pb-1" src="../Houses/duplex/duplex.jpg" id="MainImg" />

                <div class="small-img-group">
                    <div class="small-img-col">
                        <img src="../Houses/duplex/duplex.jpg" width="100%" class="small-img" alt="" />
                    </div>
                    <div class="small-img-col">
                        <img src="../Houses/duplex/duplex4.jpg" width="100%" class="small-img" alt="" />
                    </div>
                    <div class="small-img-col">
                        <img src="../Houses/duplex/duplex5.jpg" width="100%" class="small-img" alt="" />
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section id="featured" class="my-5 pb-5">
        <div class="container text-center mt-5 py-5">
            <h2 style="font-family: 'Secular One'">למקרה שפספסת את מגוון הדירות השונות שלנו 😨</h2>
            <hr class="mx-auto" />
            <%--<p style="font-family: simpleclm; font-size: 18px">דילים שלא כדאי לפספס:</p>--%>
        </div>

        <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
                <a href="/Forms/Shop.aspx">
                    <img class="img-fluid mb-3" src="/Houses/living%20room%20kitchen/livingroomkitchen3.jpg" />
                </a>
                <h5 class="p-name">דירת שני חדרים מרעננת בעלת מיקום מצוין</h5>
                <h4 class="p-price">₪2900 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <a href="/Forms/Shop.aspx">
                    <img class="img-fluid mb-3" src="/Houses/stairs/stair.jpg" />
                </a>
                <h5 class="p-name">דירה בקומת קרקע עם סט מדרגות משגע</h5>
                <h4 class="p-price">₪4200 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <a href="/Forms/Shop.aspx">
                    <img class="img-fluid mb-3" src="/Houses/lebanon/lebanonlivingroom.jpg" />
                </a>
                <h5 class="p-name">דירה גדולה מהחיים למשפחה חמה ואוהבת</h5>
                <h4 class="p-price">₪1900 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>

            <div class="product text-center col-lg-3 col-md-4 col-12">
                <a href="/Forms/Shop.aspx">
                    <img class="img-fluid mb-3" src="/Houses/balfur/balfur2.jpg" />
                </a>
                <h5 class="p-name">דירה ענקית ברחוב בלפור המהמם</h5>
                <h4 class="p-price">₪2500 לחודש </h4>
                <button class="buy-btn">ליצירת קשר</button>
            </div>
        </div>
    </section>

    <script>
        var MainImg = document.getElementById('MainImg');
        var smallimg = document.getElementsByClassName('small-img');

        smallimg[0].onclick = function () {
            MainImg.src = smallimg[0].src;
        }

        smallimg[1].onclick = function () {
            MainImg.src = smallimg[1].src;
        }

        smallimg[2].onclick = function () {
            MainImg.src = smallimg[2].src;
        }




    </script>
</asp:Content>
