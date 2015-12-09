<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="CeeLearnAndDo.Admin.Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><%=pageTitle%></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_header_title" runat="server">
    <%=contentTitle%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_header_breamcrumb" runat="server">
    <%=breadCrumb%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    <%
        if (Request.QueryString["action"] == "general")
        {
    %>
        
    <%
        }
        else if (Request.QueryString["action"] == "discussion")
        {
    %>
        <table class="table">
            <tr>
                <td>Allow Questions</td><td><asp:CheckBox ID="CheckBox1" runat="server" /></td>
            </tr>
        </table>
    <%
        }
    %>
</asp:Content>
