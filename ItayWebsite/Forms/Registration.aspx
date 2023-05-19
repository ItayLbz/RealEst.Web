<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ItayWebsite.Forms.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title>הרשמה</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <section id="form">
        <h1 class="center" style="font-family:'Secular One'; text-align:center; color:#5a8694">הרשמה</h1>
        <table align="center">
            <tr>
                <td>שם משתמש</td>
                <td>
                    <input type="text" name="userName" required /></td>
            </tr>

            <tr>
                <td>סיסמא</td>
                <td>
                    <input type="password" name="password" required /></td>
            </tr>

            <tr>
                <td>שם פרטי</td>
                <td>
                    <input type="text" name="firstName" /></td>
            </tr>

            <tr>
                <td>שם משפחה</td>
                <td>
                    <input type="text" name="lastName" /></td>
            </tr>

            <tr>
                <td>מספר טלפון</td>
                <td>
                    <input type="tel" name="phone" /></td>
            </tr>

            <tr>
                <td>דואר אלקטרוני</td>
                <td>
                    <input type="email" name="mail" /></td>
            </tr>

            <tr>
                <td>מין </td>
                <td>
                    <input type="radio" id="male" name="gender" value="זכר" /><label for="male">זכר</label>
                    <input type="radio" id="female" name="gender" value="נקבה" /><label for="female">נקבה</label>
                </td>
            </tr>

            <tr>

                <td>
                    <input type="reset" value="נקה" /></td>
                <td>
                    <input type="submit" value="הרשם" />
                </td>
            </tr>

        </table>
        
        <br />
        <br />
        <div class="center" style="font-family:'Secular One'; text-align:center">
            <asp:Label ID="lblErrorMsg" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="coral"></asp:Label>
        </div>
    </section>
</asp:Content>
