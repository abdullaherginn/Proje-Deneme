<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="Deneme.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified" style="height: 365px">
            <tr>
                <td style="width: 184px; height: 64px">Araba Markası</td>
                <td style="height: 64px">
                    <asp:DropDownList ID="combobox" runat="server" Height="150px" Width="193px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 184px; height: 22px">Araba Modeli</td>
                <td style="height: 22px">
                    <asp:TextBox ID="TextModel" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px">Araba Foto Link</td>
                <td>
                    <asp:TextBox ID="TextFoto" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px; height: 20px">Araba Yakıt Tipi</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextYakit" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px; height: 19px">Açıklama</td>
                <td style="height: 19px">
                    <asp:TextBox ID="TextDescription" runat="server" Height="130px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px; height: 20px">Araç Satıcısı</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextSatici" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px; height: 22px">İİletişim</td>
                <td style="height: 22px">
                    <asp:TextBox ID="Textİletisim" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px">Araç Fiyatı</td>
                <td>
                    <asp:TextBox ID="TextFiyat" runat="server" OnTextChanged="TextBox1_TextChanged" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 184px">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" Height="53px" OnClick="BtnEkle_Click" Text="İlanı Ekle" Width="101px" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
