<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Project1.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function validate()
        {
            var UserName = document.getElementById('<%=txtusername.ClientID%>').value;
            if (UserName == "")
            {
                alert("Enter Username");
                return false;
            }

            var Password = document.getElementById('<%=txtpwd.ClientID%>').value;
            if (Password == "")
            {
                 alert("Enter Password");
                 return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Welcome to Banking Application
    </div>
    <br />
    <div align="center" style="font-size: xx-large; right: 24px; background-color: #808080">
        Customer Login
    </div>
    <br />
    <div style="background-color: #808080">

        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblusername" runat="server" Text="UserName" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpwd" runat="server" Text="Password" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" OnClientClick="return validate()" Height="36px" Style="font-weight: 700" Width="83px" Font-Size="Large" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
