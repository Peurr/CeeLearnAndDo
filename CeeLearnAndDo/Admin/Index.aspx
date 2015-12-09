<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CeeLearnAndDo.Admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Administrator Panel - Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_header_title" runat="server">
    <!--* title <small>small title</small> *-->
    Dashboard <small>Control panel</small>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="page_header_breamcrumb" runat="server">
    <!--* li a & li.active a > *-->
    <li><a href="Index.aspx"><i class="fa fa-home"></i>Home</a></li>
    <li class="active">Dashboard</li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">
    
</asp:Content>
