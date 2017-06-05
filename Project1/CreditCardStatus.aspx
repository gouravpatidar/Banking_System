<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreditCardStatus.aspx.cs" Inherits="Project1.CreditCardStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">

            <Columns>

                <asp:BoundField DataField="CreditCardApplicantID" HeaderText="CreditCardApplicantID" ItemStyle-Width="150">
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ItemStyle-Width="150">
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CreditCardType" HeaderText="LoanID" ItemStyle-Width="150">
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CreditCardLimit" HeaderText="Credit Card Limit" ItemStyle-Width="150">
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="150">
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>

            </Columns>

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

        </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="Yellow"></asp:Label>
        <hr />
    </div>
    <div align="center">

        <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Credit Card Application Id" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcardappid" runat="server" Height="31px" Width="156px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Customer Id" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCId" runat="server" Height="31px" Width="156px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Credit Card Type" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCCardType" runat="server" Height="31px" Width="156px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Credit Card Limit" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCcardLimit" runat="server" Height="31px" Width="156px"></asp:TextBox>
                    </td>
                </tr> <tr>
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
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CustomerMain.aspx">Back</asp:LinkButton></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" OnClick="btnSubmit_Click" Style="font-weight: 700" Width="130px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>
    <asp:LinkButton ID="btnBack" runat="server" PostBackUrl="~/EmployeeMain.aspx">Back</asp:LinkButton>
</asp:Content>
