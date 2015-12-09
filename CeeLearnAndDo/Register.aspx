<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CeeLearnAndDo.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="all-wrapper-loginpage">
        <fieldset>
            <legend>Register</legend>
            <table>
                <tr>
                    <td>Username</td>
                    <td class="td-length"><input type="text" class="inputfield" /></td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td class="td-length"><input type="text" class="inputfield" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="td-length"><input type="password" class="inputfield" /></td>
                </tr>
                <tr>
                    <td>Password again</td>
                    <td class="td-length"><input type="password" class="inputfield" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td-length"><asp:Button ID="Button1" runat="server" Text="Register" CssClass="button"/></td>                  
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
