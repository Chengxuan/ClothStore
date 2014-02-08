<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ MasterType TypeName="Site" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style8">
                <asp:ImageButton ID="btnHoody" Width="100" Height="20" ImageUrl="~/Images/imgHoody.jpg" runat="server" CommandName="hd" OnCommand="btnStore_Command" />
            </td>
            <td class="auto-style7" rowspan="5">
                <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:WhiskeyConnectionString %>" SelectCommand="SELECT [Name], [Description], [ImageFile], [UnitPrice], [Instock], [ProductID] FROM [Products] WHERE ([CategoryID] = @CategoryID) ORDER BY [Name]">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="hd" Name="CategoryID" SessionField="category" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                 <asp:ListView ID="lvwProducts" runat="server" DataKeyNames="ProductID" DataSourceID="dsProducts">
                    <AlternatingItemTemplate>
                        <span style="">
                            <table>
                                <tr>
                                    <td class="auto-styleimage">
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        <asp:Image ID="ImageFile" Width="100" Height="100" runat="server" ImageUrl='<%#"~/Images/"+ Eval("ImageFile") %>' />

                                    </td>
                                    <td class="auto-styledes">
                                        <asp:Label ID="DesriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </td>
                                    <td class="auto-stylecenter">Price:
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    </td>

                                    <td>
                                        <asp:Button ID="AddButton" runat="server" Text="Add to Basket" CommandName='<%# Eval("ProductID")%>' CommandArgument='<%#Eval("Instock") %>'  OnCommand="AddButton_Command"/>
                                    </td>
                                </tr>
                            </table>

                            <br />
                            <br />
                        </span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">ProductID:
                        <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                            <br />
                            Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            ImageFile:
                        <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                            <br />
                            UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br />
                            <br />
                        </span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                            <br />
                            Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            ImageFile:
                        <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                            <br />
                            UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br />
                            <br />
                        </span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">
                            <table>
                                <tr>
                                    <td class="auto-styleimage">
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        <asp:Image ID="ImageFile" Width="100" Height="100" runat="server" ImageUrl='<%#"~/Images/"+ Eval("ImageFile") %>' />

                                    </td>
                                       <td class="auto-styledes" >
                                        <asp:Label ID="DesriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                    </td>
                                    <td class="auto-stylecenter">Price:
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    </td>
                                     <td>
                                        <asp:Button ID="AddButton" runat="server" Text="Add to Basket" CommandName='<%# Eval("ProductID")%>' CommandArgument='<%#Eval("Instock") %>' OnCommand="AddButton_Command"/>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                            <br />
                            Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            ImageFile:
                        <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                            <br />
                            UnitPrice:
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                            <br />
                            <br />
                        </span>
                    </SelectedItemTemplate>
                      <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                            <asp:DataPager PageSize="2" ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:ImageButton ID="btnTshirt" Width="100" Height="20" ImageUrl="~/Images/imgTshirt.jpg" runat="server" CommandName="ts" OnCommand="btnStore_Command" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:ImageButton ID="btnTrousers" Width="100" Height="20" ImageUrl="~/Images/imgTrousers.jpg" runat="server" CommandName="tr" OnCommand="btnStore_Command" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:ImageButton ID="btnShoes" Width="100" Height="20" ImageUrl="~/Images/imgShoes.jpg" runat="server" CommandName="sh" OnCommand="btnStore_Command" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:ImageButton ID="btnUnderwear" Width="100" Height="20" ImageUrl="~/Images/imgUnderwear.jpg" runat="server" CommandName="uw" OnCommand="btnStore_Command" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-styleright">
                <asp:HyperLink runat="server" ID="hylBasket" Text="Go to Basket" NavigateUrl="~/BasketPage.aspx"></asp:HyperLink>
                <asp:Button ID="btnCheckout" runat="server" Text="CheckOut" OnClick="btnCheckout_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content> 

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style7 {
        }

        .auto-style8 {
            width: 20%;
            text-align: center;
        }
        .auto-stylecenter {
            width: 200px;
            text-align: center;
        }
        .auto-styleimage {
             width: 300px;
            text-align: center;
        }
        .auto-styledes {
            width: 400px;
            text-wrap: normal;
            text-align: left;
        }
        .auto-styleright {
            text-align:right;
        }
    </style>
</asp:Content>


