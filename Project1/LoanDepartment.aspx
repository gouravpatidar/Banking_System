<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LoanDepartment.aspx.cs" Inherits="Project1.LoadDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
       Loan Department
    </div><br />

     <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Loan Id" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblLoanId" runat="server" Visible="False" Font-Size="Large" BackColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Loan Description " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtloanDes" runat="server" Height="33px" Width="138px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Loan Type " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLoanType" runat="server"  Height="33px" Width="138px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Loan Interest Rate" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLoanIntRate" runat="server" Height="33px" Width="138px"></asp:TextBox>
                </td>
            </tr>
         
            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/CustomerMain.aspx">Back</asp:LinkButton></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" Style="font-weight: 700" Width="130px" OnClick="btnSubmit_Click" />
                &nbsp;
                    <asp:Button ID="btnloanApp" runat="server" Text="Loan Application" Height="45px" Style="font-weight: 700" Width="130px" OnClick="btnloanApp_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
