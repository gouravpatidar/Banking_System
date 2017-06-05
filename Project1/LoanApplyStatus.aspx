<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="~/LoanApplyStatus.aspx.cs" Inherits="Project1.LoanApplyStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" EmptyDataText="No Records Found." EmptyDataRowStyle-ForeColor="Red" AutoGenerateSelectButton="true" AutoGenerateColumns="false" OnSelectedIndexChanging="GridView1_SelectedIndexChanged">
            <Columns>

                <asp:BoundField DataField="ApplicationNumber" HeaderText="Application Number" ItemStyle-Width="150" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ItemStyle-Width="150" />
                <asp:BoundField DataField="LoanID" HeaderText="LoanID" ItemStyle-Width="150" />
                <asp:BoundField DataField="LoanStartDate" HeaderText="LoanStartDate" ItemStyle-Width="150" />
                <asp:BoundField DataField="LoanDurationMonths" HeaderText="LoanDurationMonths" ItemStyle-Width="150" />
                <asp:BoundField DataField="BranchID" HeaderText="BranchID" ItemStyle-Width="150" />
                <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="150" />

            </Columns>

        </asp:GridView>
        <br />

        <asp:Label ID="Label1" runat="server" BackColor="Yellow"></asp:Label>
    </div>
    <div align="center">
        <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Application Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtappnum" runat="server" Height="31px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Customer ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcustid" runat="server" Height="31px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Loan ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtloanid" runat="server" Height="31px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Loan StartDate"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtloandate" runat="server" Height="31px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Loan Duration Months"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDurmonth" runat="server" Height="31px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="BranchID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtbrncid" runat="server" Height="31px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Status"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlstatus" runat="server" Height="27px" Width="104px">
                            <asp:ListItem>---Select---</asp:ListItem>
                            <asp:ListItem>Approve</asp:ListItem>
                            <asp:ListItem>Reject</asp:ListItem>
                            <asp:ListItem>Update and Approve</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr><tr>
                    <td></td><td>
                         <asp:Button ID="btnsave" runat="server" Text="Save" Height="31px" OnClick="btnsave_Click1" Style="font-weight: 700" Width="62px" />
                    </td>
                     </tr>
              
            </table>
        </asp:Panel>
    </div>
     
    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/EmployeeMain.aspx">Back</asp:LinkButton>
</asp:Content>
