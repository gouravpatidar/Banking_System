<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerInformation.aspx.cs" Inherits="Project1.CustomerInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/CustomerMain.aspx">Back</asp:LinkButton>

    </div>
    <div align="center">
        <asp:Button ID="btncustprofile" runat="server" Text="Customer Profile" Height="37px" OnClick="btncustprofile_Click" Style="font-weight: 700" Width="177px" />

        <asp:Button ID="btnLoandetails" runat="server" Text="Loan Details" OnClick="btnLoandetails_Click" Height="36px" Style="font-weight: 700" Width="135px" />

        <asp:Button ID="btnCreditcarddetails" runat="server" Text="Credit Card Details" OnClick="btnCreditcarddetails_Click" Height="35px" Style="font-weight: 700" Width="175px" />

        <asp:GridView ID="grdview" runat="server" EmptyDataText="No Records Found." AutoGenerateColumns="False" EmptyDataRowStyle-ForeColor="Red" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
          <Columns>
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" />
              <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" />
              <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" />
              <asp:BoundField DataField="City" HeaderText="City" />
              <asp:BoundField DataField="Zip" HeaderText="Zip" />
              <asp:BoundField DataField="State" HeaderText="State" />

              <asp:BoundField DataField="CustomerPhone" HeaderText="CustomerPhone" />
              <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" />
              <asp:BoundField DataField="BranchID" HeaderText="BranchID" />
               <asp:BoundField DataField="Income" HeaderText="Income" />
               <asp:BoundField DataField="Asset" HeaderText="Asset" />
               <asp:BoundField DataField="CreditScore" HeaderText="CreditScore" />
              <asp:BoundField DataField="EmployementDetails" HeaderText="EmployementDetails" />
          </Columns>
              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </div>
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="ApplicationNumber" HeaderText="ApplicationNumber" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" />
                <asp:TemplateField HeaderText="Customer Name">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lnkView" OnClick="lnkView_Click" CommandArgument='<%#Eval("CustomerName") %>'
                            CommandName="Customer Name">View Customer Profile</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="LoanStartDate" HeaderText="LoanStartDate" />
                <asp:BoundField DataField="LoanDurationMonths" HeaderText="LoanDurationMonths" />
                <asp:BoundField DataField="BranchID" HeaderText="BranchID" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>

     <div align="center">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="CreditCardApplicantID" HeaderText="CreditCardApplicantID" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" />
                <asp:TemplateField HeaderText="Customer Name">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lnkView1" OnClick="lnkView1_Click"  CommandArgument='<%#Eval("CustomerName") %>'
                            CommandName="Customer Name">View Customer Profile</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CreditCardType" HeaderText="CreditCardType" />
                <asp:BoundField DataField="CreditCardLimit" HeaderText="CreditCardLimit" />
                
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</asp:Content>

