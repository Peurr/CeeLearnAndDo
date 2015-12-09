<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CeeLearnAndDo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="all-wrapper-loginpage">
        <fieldset>
            <legend>Log in</legend>
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" class="inputfield" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" class="inputfield" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a class="link" href="#">Forgot password?</a></td>
                </tr>
            </table>
            <div class="login-button-container">
                <input type="button" value="Log in" class="button"/>
            </div>
        </fieldset>
    </div>
</asp:Content>
