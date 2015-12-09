<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CeeLearnAndDo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="all-wrapper-loginpage">
        <fieldset>
            <legend>Log In</legend>
            <table>
                <tr>
                    <td>Username</td>
                    <td class="td-length"><input type="text" class="inputfield" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="td-length"><input type="password" class="inputfield" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a class="link" href="#">Forgot password?</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td-length"><input type="button" value="Log in" class="button"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td-length">Are you a new user? <a href="Register.aspx" class="link">Register here!</a></td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
