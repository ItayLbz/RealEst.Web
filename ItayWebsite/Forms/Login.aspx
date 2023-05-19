<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ItayWebsite.Forms.Login" CodeFile="~/Forms/Login.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <title>התחברות</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <section id="form">
        <h1 class="center" style="font-family:'Secular One'; text-align:center; color:#5a8694">התחברות</h1>
        <table align="center">
            <tr>
                <td>שם משתמש
                </td>

                <td>
                    <input type="text" name="userName" required pattern="[A-Za-z0-9]+" title="a-z insensitive and 0-9 only" />
                </td>

            </tr>

            <tr>
                <td>סיסמא
                </td>

                <td>
                    <input type="password" name="password" maxlength="9" />
                </td>


            </tr>

            <tr>
                <td>
                    <input type="reset" value="נקה" />
                </td>

                <td>
                    <input type="submit" value="התחבר" onclick="return checkUserName()" />
                </td>


            </tr>

        </table>
        <br />
        <div class="center" style="font-family:'Secular One'; text-align:center">
            <asp:Label ID="lblErrorMsg" runat="server"  Font-Bold="true" Font-Size="XX-Large" ForeColor="#5a8694"></asp:Label>
        </div>
    </section>
</asp:Content>

