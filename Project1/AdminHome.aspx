<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Project1.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: xx-large; right: 24px">
        Welcome <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <div align="center">
        <asp:Button ID="btnaddBranch" runat="server" Text="Add Branch Details" BackColor="#009999" Height="47px" OnClick="btnaddBranch_Click" style="font-weight: 700" Width="201px" />
      &nbsp;
          <asp:Button ID="btnaddEmp" runat="server" Text="Add Employee Details" BackColor="#009999" Height="47px" OnClick="btnaddEmp_Click" style="font-weight: 700" Width="164px" />
        &nbsp;
    <asp:Button ID="btnadminreg" runat="server" Text="New Admin Registration" BackColor="#009999" Height="47px" OnClick="btnadminreg_Click" style="font-weight: 700" Width="176px" Visible="False" />

    </div>
    <br />
</asp:Content>
