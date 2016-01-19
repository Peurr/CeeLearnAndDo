<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CeeLearnAndDo.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="all-wrapper-loginpage">
        <fieldset>
            <legend>Register</legend>
            <p>
                <asp:Literal runat="server" ID="StatusMessage" />
            </p>
            <table>
                <tr>
                    <td>Username</td>
                    <td class="td-length">
                        <asp:TextBox ID="UserName" CssClass="normal-textbox login-control" runat="server"></asp:TextBox></td>
                </tr>
                <%-- 
                <tr>
                    <td>E-Mail</td>
                    <td class="td-length"><input type="text" class="inputfield" /></td>
                </tr>
                --%>
                <tr>
                    <td>Password</td>
                    <td class="td-length">
                        <asp:TextBox ID="Password" TextMode="Password" CssClass="normal-textbox login-control" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password again</td>
                    <td class="td-length">
                        <asp:TextBox ID="ConfirmPassword" TextMode="Password" CssClass="normal-textbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="td-length">
                        <asp:Button ID="Button1" OnClick="CreateUser_Click" runat="server" Text="Register" CssClass="button" /></td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
