<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WelcomeBack.aspx.cs" Inherits="WelcomeBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style8">Thank you! Welcome Back again!</td>
        </tr>
        <tr>
            <td class="auto-style8">This page will redirect you in 3 seconds, if it&#39;s not work please click the Link below...</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Go to Home page...</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

