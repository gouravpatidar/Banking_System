<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LoanDepartDetails.aspx.cs" Inherits="Project1.LoanDepartDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Loan Department Details
    </div>
    <br />

    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Application Number" CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblappnum" runat="server" BackColor="Yellow" CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Customer ID" CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCId" runat="server" Height="35px" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Loan ID " CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLoanId" runat="server"  Height="35px" Width="141px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Loan Start Date" CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLoanStartdate" runat="server" Height="35px" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Loan Duration in Months" CssClass="auto-style2" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLoanDuration" runat="server" Height="35px" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Branch ID"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlBranchId" runat="server" Height="44px" Width="142px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" Style="font-weight: 700" Width="130px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/CustomerMain.aspx">Back</asp:LinkButton>
    </div>
</asp:Content>
