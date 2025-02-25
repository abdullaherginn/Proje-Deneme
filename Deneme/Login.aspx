<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Deneme.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:TextBox ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
    <br />
    <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="34px" Text="Giriş Yap" Width="109px" OnClick="GirisYap" />
</form>
</asp:Content>
