<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Deneme.Messages" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 156px">
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td style="height: 20px">Gönderen Kişi:&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">Gönderen Mail:&nbsp;
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">Mesaj:&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server" Height="138px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="317px"></asp:TextBox>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 34px">
                                       <a href ="MessageDelete.aspx?id=<%# Eval("ContactID") %>"><div>Sil</div></a>                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
