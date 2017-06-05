<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerMain.aspx.cs" Inherits="Project1.CustomerMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Button ID="btncustomerinformation" runat="server" Text="Customer Details" BackColor="#009999" Height="45px" Style="font-weight: 700" Width="208px" OnClick="btncustomerinformation_Click" />
        &nbsp;
        <asp:Button ID="btnloanapplyform" runat="server" Text="Loan Apply Form" BackColor="#009999" Height="45px" Style="font-weight: 700" Width="153px" OnClick="btnApplyform_Click" />
       &nbsp;
        <asp:Button ID="btncreditcardform" runat="server" Text="Credit Card Apply Form" BackColor="#009999" Height="45px" Style="font-weight: 700" Width="169px" OnClick="btnCreditcardform_Click" />

    </div>

</asp:Content>
