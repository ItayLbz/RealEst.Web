<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Errors.aspx.cs" Inherits="ItayWebsite.Errors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <section class="my-5 py-5">
        <br />
        <br />
        <br />

        <div style="text-align: center">
            <asp:Label ID="lblErrorsMsg"  style="font-family:'Secular One'" Font-Bold="true" Font-Size="XX-Large" ForeColor="coral" runat="server" Text="השגיאה סוג תיאור" ></asp:Label>
        </div>
    </section>
</asp:Content>
