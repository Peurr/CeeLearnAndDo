<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Detailpagina.aspx.cs" Inherits="CeeLearnAndDo.Detailpagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%-- CSS --%>
    <link href="Styles/detailpagina.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="informatie-wrapper">
        <div class="informatie-container">
            <div class="category-container">
                <p class="category-text">Microsoft</p>
            </div>
            <div class="article-header-container">
                <h1 class="article-h1">Mark Zuckerberg gaat 99 procent van zijn Facebook-aandelen doneren aan goed doel</h1>
                <p class="posted">Posted on 16-12-2015 14:01 by Justin Breg</p>
            </div>
            <div class="article-body-conainer">
            </div>
        </div>
    </div>

</asp:Content>
