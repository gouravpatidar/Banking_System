<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Project1.AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table>

            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=" Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAName" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Designation"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtADesign" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text=" Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAAddress" runat="server" Height="55px" Style="margin-left: 4px" TextMode="MultiLine" Width="163px"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtState" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcity" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip Code"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtZip" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPhone" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Admin Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUname" runat="server" Height="33px" Width="144px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpwd" runat="server" Height="33px" Width="144px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/AdminHome.aspx">Back</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BtnRegister" runat="server" Text="Registration" Height="45px" Style="font-weight: 700" Width="130px" OnClick="BtnRegister_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
