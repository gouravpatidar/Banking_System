<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="Project1.AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Account Details
    </div>
    <br />
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Account Number " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAccountNumber" runat="server" Text="Account Number " Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Customer Id" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcustomerId" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Account Type Id" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblacctypeid" runat="server" Text="Account Type Id" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Account Balance" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAccountBal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" Font-Size="Large" Style="font-weight: 700" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
