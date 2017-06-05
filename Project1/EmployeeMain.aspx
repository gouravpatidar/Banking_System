<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeMain.aspx.cs" Inherits="Project1.EmployeeMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer Details" BackColor="#009999" Height="45px" OnClick="btnAddCustomer_Click" Style="font-weight: 700" Width="208px" />
    &nbsp;
                <asp:Button ID="btndeposit" runat="server" Text="Deposit Amount" BackColor="#009999" Height="45px" OnClick="btndeposit_Click" Style="font-weight: 700" Width="153px" />
         &nbsp;
          <asp:Button ID="btnloanstatus" runat="server" Text="Loan Status" BackColor="#009999" Height="45px" OnClick="btnloanstatus_Click" Style="font-weight: 700" Width="153px" />
    &nbsp;
        <asp:Button ID="btncreditcard" runat="server" Text="Credit Card Status" BackColor="#009999" Height="45px" OnClick="btncreditcard_Click" Style="font-weight: 700" Width="153px" />
    </div>

</asp:Content>
