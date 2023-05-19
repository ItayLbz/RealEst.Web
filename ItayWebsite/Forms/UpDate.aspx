<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpDate.aspx.cs" Inherits="ItayWebsite.Forms.UpDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <section id="form">
        <h1 class="center" style="font-family:'Secular One'; text-align:center; color:#5a8694">עדכון פרטים</h1>
        <table align="center">
            <tr>
                <td>סמן את הפרטים לעדכון</td>
                <td>
                    <input type="checkbox" id="cbUserName" name="cbUserName" /><label for="userName">שם משתמש</label>
                    <input type="checkbox" id="cbPassword" name="cbPassword" /><label for="password">סיסמא</label></td>
            </tr>
            <tr>
                <td>שם משתמש חדש</td>
                <td>
                    <input type="text" name="userName" pattern="[A-Za-z0-9]+" title="a-z insensitive and 0-9 only" /></td>
            </tr>
            <tr>
                <td>סיסמא חדשה</td>
                <td>
                    <input type="password" name="password" maxlength="9" /></td>
            </tr>
            <tr>
                <td>
                    <input type="reset" value="נקה" /></td>
                <td>
                    <input type="submit" value="עדכן" onclick="return checkUserName()" /></td>
            </tr>
        </table>
        <div class="center" style="font-family:'Secular One'; text-align:center">
            <asp:Label ID="lblErrorMsg" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="coral"></asp:Label>
        </div>
    </section>
</asp:Content>
