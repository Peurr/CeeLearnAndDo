<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="References.aspx.cs" Inherits="CeeLearnAndDo.References" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/reference.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="reference-content-wrapper">
        <div class="page-title-container">
            <h1 class="page-title">References</h1>
        </div>
        <div class="reference-card-wrapper">
            
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSourceRef">
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="reference-card-container">
                            <div class="card-sidebar-container">
                                <div class="card-sidebar">
                                    <h2 class="company-name"><%# Eval("Title") %></h2>
                                    <p class="card-date"><%# Eval("DateAdded") %></p>
                                </div>
                            </div>
                            <article class="card-content">
                                <p class="reference-text">
                                    <%# Eval("Content") %>
                                </p>
                            </article>
                       </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSourceRef" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Reference]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
