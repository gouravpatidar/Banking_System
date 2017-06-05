<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AccountTypeDetails.aspx.cs" Inherits="Project1.AccountTypeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center" style="font-size: xx-large; right: 24px">
       Account Type Details
    </div><br />  <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Account Type Id "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAccounttypeId" runat="server" Text="Account Type Id " BackColor="Yellow" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Account Type Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="drpAccounttype" runat="server" Height="31px" Width="129px" style="margin-left: 0px">
                        <asp:ListItem>Savings Account</asp:ListItem>
                        <asp:ListItem>Checkings Account</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Account Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAccounttDescrption" runat="server" Height="36px" TextMode="MultiLine" Width="123px"></asp:TextBox>
                </td>
            </tr>
            <tr><td></td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" Height="34px" style="font-weight: 700" Width="78px" />
                &nbsp;<asp:LinkButton ID="lnkCreateaccount" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" PostBackUrl="~/AccountDetails.aspx">Create Account</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
