<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AccountPage.aspx.cs" Inherits="AccountPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="dsCustomers" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WhiskeyConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [PassWord] = @original_PassWord AND [Address] = @original_Address AND [CardNo] = @original_CardNo AND [CardName] = @original_CardName AND [PhoneNumber] = @original_PhoneNumber AND [ExpireDate] = @original_ExpireDate" InsertCommand="INSERT INTO [Customers] ([Email], [Name], [PassWord], [Address], [CardNo], [CardName], [PhoneNumber], [ExpireDate]) VALUES (@Email, @Name, @PassWord, @Address, @CardNo, @CardName, @PhoneNumber, @ExpireDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Email], [Name], [PassWord], [Address], [CardNo], [CardName], [PhoneNumber], [ExpireDate] FROM [Customers] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [PassWord] = @PassWord, [Address] = @Address, [CardNo] = @CardNo, [CardName] = @CardName, [PhoneNumber] = @PhoneNumber, [ExpireDate] = @ExpireDate WHERE [Email] = @original_Email AND [Name] = @original_Name AND [PassWord] = @original_PassWord AND [Address] = @original_Address AND [CardNo] = @original_CardNo AND [CardName] = @original_CardName AND [PhoneNumber] = @original_PhoneNumber AND [ExpireDate] = @original_ExpireDate">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_PassWord" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_CardNo" Type="String" />
                <asp:Parameter Name="original_CardName" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_ExpireDate" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="CardNo" Type="String" />
                <asp:Parameter Name="CardName" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="ExpireDate" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="AccountEmail" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="CardNo" Type="String" />
                <asp:Parameter Name="CardName" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="ExpireDate" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_PassWord" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_CardNo" Type="String" />
                <asp:Parameter Name="original_CardName" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_ExpireDate" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsSpent" runat="server" ConnectionString="<%$ ConnectionStrings:WhiskeyConnectionString %>" SelectCommand="SELECT [Spent] FROM [Customers] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="AccountEmail" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p style="text-align: right">
        <asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="dsCustomers" Height="50px" Width="656px" style="margin-left: 164px">
            <Fields>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Wrap="true" SortExpression="Address" />
                <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" />
                <asp:BoundField DataField="CardName" HeaderText="CardName" SortExpression="CardName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="ExpireDate" HeaderText="ExpireDate" SortExpression="ExpireDate" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        <asp:DetailsView AlternatingRowStyle-CssClass="auto-style5"  ID="DetailsView2" runat="server" DataSourceID="dsSpent" Height="50px" Width="125px">
        </asp:DetailsView>
    </p>
</asp:Content>

