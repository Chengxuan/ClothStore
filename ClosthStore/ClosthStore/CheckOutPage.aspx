<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CheckOutPage.aspx.cs" Inherits="CheckOutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 235px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="dsCustomer1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WhiskeyConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Address] = @original_Address AND [PhoneNumber] = @original_PhoneNumber" InsertCommand="INSERT INTO [Customers] ([Email], [Name], [Address], [PhoneNumber]) VALUES (@Email, @Name, @Address, @PhoneNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Email], [Name], [Address], [PhoneNumber] FROM [Customers] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Address] = @Address, [PhoneNumber] = @PhoneNumber WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Address] = @original_Address AND [PhoneNumber] = @original_PhoneNumber">
        <DeleteParameters>
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="AccountEmail" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCustomer2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WhiskeyConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [Email] = @original_Email AND [CardName] = @original_CardName AND [CardNo] = @original_CardNo AND [ExpireDate] = @original_ExpireDate" InsertCommand="INSERT INTO [Customers] ([CardName], [CardNo], [ExpireDate], [Email]) VALUES (@CardName, @CardNo, @ExpireDate, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CardName], [CardNo], [ExpireDate], [Email] FROM [Customers] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Customers] SET [CardName] = @CardName, [CardNo] = @CardNo, [ExpireDate] = @ExpireDate WHERE [Email] = @original_Email AND [CardName] = @original_CardName AND [CardNo] = @original_CardNo AND [ExpireDate] = @original_ExpireDate">
        <DeleteParameters>
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CardName" Type="String" />
            <asp:Parameter Name="original_CardNo" Type="String" />
            <asp:Parameter Name="original_ExpireDate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CardName" Type="String" />
            <asp:Parameter Name="CardNo" Type="String" />
            <asp:Parameter Name="ExpireDate" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="AccountEmail" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CardName" Type="String" />
            <asp:Parameter Name="CardNo" Type="String" />
            <asp:Parameter Name="ExpireDate" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CardName" Type="String" />
            <asp:Parameter Name="original_CardNo" Type="String" />
            <asp:Parameter Name="original_ExpireDate" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style9"><h1 style="width: 333px">Billing Information</h1></td>
            <td class="auto-style9"><h1 style="width: 333px">Payment Information</h1></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="dsCustomer1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td class="auto-style9">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="dsCustomer2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="CardName" HeaderText="CardName" SortExpression="CardName" />
                        <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" />
                        <asp:BoundField DataField="ExpireDate" HeaderText="ExpireDate" SortExpression="ExpireDate" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
    <asp:Label ID="lbTotal" runat="server" Text="Total:"></asp:Label>
    <asp:Label ID="lbTotaltext" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
    <asp:Button ID="btnGoBack" runat="server" Text="GoBack" OnClick="btnGoBack_Click" />
</asp:Content>

