<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Deneme.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi Giriniz"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" Height="16px" ToolTip="Mail Adresinizi Giriniz" Width="117px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxDesc" runat="server" Height="240px" TextMode="MultiLine" ToolTip="Mesajınızı Giriniz" Width="457px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Height="33px" OnClick="btnsend_Click" Text="Gönder" Width="78px" />
    </form>
</asp:Content>
