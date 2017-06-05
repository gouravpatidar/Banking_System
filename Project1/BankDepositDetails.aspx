<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BankDepositDetails.aspx.cs" Inherits="Project1.BankDepositDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Bank Deposit Details
    </div>
    <br />
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="CustomerID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCustomerid" runat="server" Height="39px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Account Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaNumber" runat="server" Height="39px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Customer Phone Number "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server" Height="39px" Width="144px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Deposit Money"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDepAccount" runat="server" Height="39px" Width="144px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/EmployeeMain.aspx">Back</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" Style="font-weight: 700" Width="130px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
