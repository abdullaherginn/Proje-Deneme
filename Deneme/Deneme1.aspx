<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Deneme1.aspx.cs" Inherits="Deneme.Deneme1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="74px" ReadOnly="True" Text='<%# Eval("CarDescription") %>' TextMode="MultiLine" Width="1134px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Image ID="Image1" runat="server" Height="168px" ImageUrl='<%# Eval("CarPhoto") %>' Width="676px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPrice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
