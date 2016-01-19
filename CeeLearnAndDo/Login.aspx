<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CeeLearnAndDo.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="all-wrapper-loginpage">
        <fieldset>
            <legend>Log In</legend>
            <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                <p>
                    <asp:Literal runat="server" ID="StatusText" />
                </p>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
                <table>
                    <tr>
                        <td>Username</td>
                        <td class="td-length"><asp:TextBox ID="UserName" CssClass="inputfield" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td class="td-length"><asp:TextBox ID="Password" CssClass="inputfield" TextMode="Password" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="td-length">
                            <asp:Button runat="server" CssClass="button" OnClick="SignIn" Text="Log in" />
                        </td>
                    </tr>
                </table>
            </asp:PlaceHolder>
        </fieldset>
    </div>
</asp:Content>
