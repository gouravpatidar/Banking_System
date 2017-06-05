<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Project1.EmployeeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div align="center" style="font-size: xx-large; right: 24px">
      Employee Details
    </div><br />
  <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbleid" runat="server" Text="Employee Id"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmpId" runat="server" Text="Employee Id" BackColor="Yellow" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEName" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Employee Designation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEDesign" runat="server" Height="31px" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Employee Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txteAddress" runat="server" Height="55px" Style="margin-left: 4px" TextMode="MultiLine" Width="163px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtState" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Employee Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEPhone" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Employee Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEEmail" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"  Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="31px"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/AdminHome.aspx">Back</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" Text="Registration" Height="45px" Style="font-weight: 700" Width="130px" OnClick="BtnRegister_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
