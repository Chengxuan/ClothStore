<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            height: 58px;
            width: 200px;
        }

        .auto-style9 {
            height: 58px;
            text-align: center;
        }

        .auto-style10 {
            height: 58px;
            width: 174px;
        }

        .auto-style11 {
            width: 174px;
        }

        .auto-style12 {
            width: 174px;
            height: 20px;
        }

        .auto-style13 {
            height: 20px;
        }

        .auto-styleLabel {
            width: 8px;
        }

        .auto-style14 {
            text-align: left;
        }

        .auto-style15 {
            width: 174px;
            height: 26px;
        }

        .auto-style16 {
            height: 26px;
            text-align: left;
        }

        .auto-style17 {
            height: 26px;
        }

        .auto-style19 {
            height: 20px;
            text-align: left;
        }

        .auto-style20 {
            width: 174px;
            height: 20px;
            text-align: center;
        }

        .auto-style21 {
            height: 20px;
            text-align: center;
            text-decoration: underline;
        }

        .auto-style22 {
            width: 174px;
            height: 24px;
        }

        .auto-style23 {
            text-align: left;
            height: 24px;
        }

        .auto-style24 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style9" colspan="2">
                <h1>Please fill this form for registeration</h1>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style21" colspan="2"><strong>Personal Information:</strong></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16">Email:</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtEmail" runat="server" Style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w*@\w*.\w*" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="cuvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" OnServerValidate="cuvEmail_ServerValidate" ErrorMessage="Email had been registered!"></asp:CustomValidator>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">Password:</td>
            <td>
                <asp:TextBox ID="txtPassWord1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassWord1" ForeColor="Red" runat="server" ControlToValidate="txtPassWord1">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style19">Re-type Password:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtPassWord2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassWord2" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPassWord2" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassWord" runat="server" ForeColor="Red" ControlToCompare="txtPassWord1" ControlToValidate="txtPassWord2" Display="Dynamic">Password should be same!</asp:CompareValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style19">Address:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  ForeColor="Red" ErrorMessage="RequiredFieldValidator" ID="rfvAddress" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">Phone Number:</td>
            <td>
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"  ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPhoneNumber">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Example:00353-123456789 or 0123456789" ValidationExpression="(\d{5}-|\d{1})\d{9}"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21" colspan="2"><strong>Payment Information(Visa Only):</strong></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style19">Card NO:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtCardNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCardNo" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCardNo">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCardNo" runat="server" ErrorMessage="Example:600333233353321" ForeColor="Red" ValidationExpression="\d{15}" ControlToValidate="txtCardNo"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style19">Expired Date:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtExpireDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvExpiredDate" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtExpireDate">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ErrorMessage="Example: 06/17" ValidationExpression="\d{2}/\d{2}" ControlToValidate="txtExpireDate"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">Name on Card:</td>
            <td>
                <asp:TextBox ID="txtCardName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCardName" runat="server" ForeColor="Red" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCardName">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:CheckBox ID="chkUser" Text="I accept User License!" runat="server" />
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td align="right">
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" PostBackUrl="~/Default.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br />
</asp:Content>

