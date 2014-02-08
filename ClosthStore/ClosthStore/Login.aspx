<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 76px;
        }
        .auto-style9 {
            height: 37px;
        }
        .auto-style11 {
            height: 36px;
            width: 200px;
        }
        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
            width: 300px;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            text-decoration: underline;
        }
        .auto-style17 {
            height: 76px;
            width: 231px;
        }
        .auto-style18 {
            height: 37px;
            width: 231px;
        }
        .auto-style19 {
            height: 36px;
            width: 231px;
        }
        .auto-style20 {
            height: 49px;
            width: 231px;
        }
        .auto-style21 {
            height: 37px;
            width: 38px;
        }
        .auto-style22 {
            height: 36px;
            width: 38px;
        }
        .auto-style24 {
            height: 36px;
            width: 300px;
        }
        .auto-style25 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style5" style="height: 218px">
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style7" colspan="2">
                <h1 class="auto-style15">Please Log In:</h1>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style21"><span class="auto-style16">E</span>ail:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtEmail" AccessKey="E"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Name Required!" EnableTheming="True" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w*@\w*.\w*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style22"><span class="auto-style16">P</span>assword:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtPassWord" AccessKey="P" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassWord" runat="server" ErrorMessage="PassWord Required!" ForeColor="Red" ControlToValidate="txtPassWord" EnableTheming="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ForeColor="Red" ErrorMessage="Email or Password is wrong!" OnServerValidate="CustomValidator1_ServerValidate" Visible="true"></asp:CustomValidator>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style24" colspan="2" align ="right">
                <asp:CheckBox ID="chkRemember" Checked="true" Text="Remember me!" runat="server" />
                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" style="height: 26px" />
            </td>
            <td class="auto-style25"></td>
        </tr>
          <tr>
            <td class="auto-style20"></td>
            <td class="auto-style14" colspan="2">
                <asp:HyperLink ID="hylRegister" runat="server" NavigateUrl="~/Register.aspx">Register?</asp:HyperLink>
            </td>
            <td class="auto-style13"></td>
        </tr>
    </table>

    <br />
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />

</asp:Content>

