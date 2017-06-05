<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreditCardDetails.aspx.cs" Inherits="Project1.CreditcardDetails" %>
<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Credit Card Department
    </div>
    <br />
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Credit Card Application Id"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblcreditcardappid" runat="server" BackColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Customer Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCId" runat="server" Height="31px" Width="156px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Credit Card Type"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCCardType" runat="server" Height="31px"  Width="156px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Credit Card Limit"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCcardLimit" runat="server" Height="31px"  Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/CustomerMain.aspx">Back</asp:LinkButton></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" OnClick="btnSubmit_Click" Style="font-weight: 700" Width="130px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
