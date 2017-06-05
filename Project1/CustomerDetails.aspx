<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Project1.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function validate()
        {
            var creditscore = document.getElementById('<%=txtcreditscore.ClientID%>').value;
            if (creditscore.value<299 && creditscore.value>800) {
                alert("Please enter valid Credit Score");
                return false;
            }
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Customer Details
    </div>
    <br />
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="CustomerID"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblCustomerId" runat="server" Text="CustomerID" BackColor="Yellow" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCName" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Customer Address"></asp:Label>

                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCAddress" runat="server" Height="49px" Style="margin-left: 4px" TextMode="MultiLine" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcity" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip Code"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtZip" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtState" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Customer Phone"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCPhone" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Customer Income"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtincome" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Customer Assets"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAsset" runat="server" Height="67px" Width="133px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Customer Credit Score"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcreditscore" runat="server" Height="23px" Width="133px" MaxLength="3"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Customer Employement Details"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemployment" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Customer Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCEmail" runat="server" Height="23px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Branch ID"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlBranchId" runat="server" Height="43px" Width="151px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUname" runat="server" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/EmployeeMain.aspx">Back</asp:LinkButton></td>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Height="37px" Style="font-weight: 700" Width="85px" OnClientClick="return validate()" />
                    <asp:Button ID="btnCreateAcctype" runat="server" Text="Create Account Type" OnClick="btnCreateAcctype_Click" Height="37px" Style="font-weight: 700" Width="214px" />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
