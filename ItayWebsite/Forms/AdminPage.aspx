<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ItayWebsite.Forms.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    
    <section class="my-5 py-5">
        <br />
        <br />
    <br />
        
        <h1 style="text-align: center; color: #5a8694">ברוך הבא לדף הניהול של האתר</h1>
        <br />
        <br />
        <center>
            <h2 style="font-family: simpleclm">צפייה בפרטי המשתמשים הרשומים באתר</h2>
        </center>
        <br />
        <h4 style="text-align: center; font-family: simpleclm">מספר הגולשים הרשומים באתר ברגע זה הוא: <%=Application["usersCounter"] %></h4>
        <br />
        <div align="center">
            <asp:DropDownList ID="DblCategory" runat="server" Font-Bold="True" Font-Size="Large"
                ForeColor="#5a8694" dir="rtl">
                <asp:ListItem Text="לחץ לבחירת אפשרויות תצוגה" Value="0"></asp:ListItem>
                <asp:ListItem Text="הצגת כל המשתמשים" Value="1"></asp:ListItem>
                <asp:ListItem Text="הצגת כל המשתמשים שתיבת המייל שלהם היא ג'ימייל" Value="2"></asp:ListItem>
                <asp:ListItem Text=" הצגת כל המשתמשים שנתנה להם הרשאת מנהל" Value="4"></asp:ListItem>
                <asp:ListItem Text=" הצגת כל המשתמשים שהקידומת שלהם היא 08" Value="5"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />

            <asp:Button ID="btnShow" runat="server" Text="הצג משתמשים" OnClick="btnShow_Click"
                BackColor="#5a8694" Font-Size="Large" Style="font-family: SuezOne" />
            <br />
            <br />
            <%=usersInfo %>
        </div>
    </section>

</asp:Content>
