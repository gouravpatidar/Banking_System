<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BranchOfficeDetails.aspx.cs" Inherits="Project1.BranchOfficeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Branch Office Details
    </div>
    <br />
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Branch ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblbranchId" runat="server" BackColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Branch Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchName" runat="server" Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Branch Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchAddress" runat="server"  Style="margin-left: 4px" TextMode="MultiLine" Width="163px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchcity" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchZip" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchState" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Branch Office Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchPhone" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Branch Office Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBranchEmail" runat="server"  Height="31px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/AdminHome.aspx">Back</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" Text="Registration" Height="45px" Style="font-weight: 700" Width="130px" BackColor="#669999" OnClick="BtnRegister_Click" Font-Bold="True" />
                </td>
            </tr>

        </table>
    </div>

</asp:Content>
