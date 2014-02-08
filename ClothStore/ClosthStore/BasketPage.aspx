<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BasketPage.aspx.cs" Inherits="BasketPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <div class="auto-style9">  
            <h1 class="auto-style10">Shopping Cart</h1>  
            <asp:HyperLink ID="hylBack" runat="server" NavigateUrl="~/Default.aspx">Go Back to Products </asp:HyperLink>  
  
            <br /><br />  
            <asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="false" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="true" DataKeyNames="ProductId" OnRowDataBound="gvShoppingCart_RowDataBound" OnRowCommand="gvShoppingCart_RowCommand" >  
                <HeaderStyle HorizontalAlign="Left" BackColor="#33DD33" ForeColor="#FFFFFF" />  
                <FooterStyle HorizontalAlign="Right" BackColor="#66DD66" ForeColor="#FFFFFF" />  
                <AlternatingRowStyle BackColor="#F8F8F8" />  
                <Columns>  
  
                    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Center" />  
                    <asp:TemplateField HeaderText="Quantity" ItemStyle-HorizontalAlign="Center">  
                        <ItemTemplate>  
                            <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />  
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>  
  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />  
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" />  
                </Columns>  
            </asp:GridView>  
  
            <br />  
            <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart" OnClick="btnUpdateCart_Click" />  
                <asp:Button ID="btnCheckout" runat="server" Text="CheckOut" OnClick="btnCheckout_Click" style="text-align: left"  />
        </div>  
   
</asp:Content>

