﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pic.aspx.cs" Inherits="ItayWebsite.Info.pic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
      <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
  <h2>Circle</h2>
  <p>The .rounded-circle class shapes the image to a circle:</p>            
  <img src="cinqueterre.jpg" class="rounded-circle" alt="Cinque Terre" width="304" height="236"> 
</div>
</asp:Content>
