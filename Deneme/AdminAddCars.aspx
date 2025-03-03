<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="Deneme.AdminAddCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <itemtemplate>
                <table class="nav-justified" style="height: 365px">
                    <tr>
                        <td style="width: 184px; height: 22px">Araba Modeli</td>
                        <td style="height: 22px">
                            <asp:TextBox ID="TextModel" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px">Araba Foto Link</td>
                        <td>
                            <asp:TextBox ID="TextFoto" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px; height: 20px">Araba Yakıt Tipi</td>
                        <td style="height: 20px">
                            <asp:TextBox ID="TextYakit" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px; height: 19px">Açıklama</td>
                        <td style="height: 19px">
                            <asp:TextBox ID="TextDescription" runat="server" Height="130px" TextMode="MultiLine" Width="173px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px; height: 20px">Araç Satıcısı</td>
                        <td style="height: 20px">
                            <asp:TextBox ID="TextSatici" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px; height: 22px">İİletişim</td>
                        <td style="height: 22px">
                            <asp:TextBox ID="Textİletisim" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px">Araç Fiyatı</td>
                        <td>
                            <asp:TextBox ID="TextFiyat" runat="server" Width="179px" ReadOnly="True" Text='<%# Eval("CarPrice") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 184px">&nbsp;</td>
                        <td style="width: 184px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 184px">&nbsp;</td>
                        <td style="width: 184px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 184px; border-bottom-style: solid; border-bottom-width: medium;">&nbsp;</td>
                        <td style="width: 184px; border-bottom-style: solid; border-bottom-width: medium;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>"><div class="btn btn-danger">Onayla</div></a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </form>
</asp:Content>
