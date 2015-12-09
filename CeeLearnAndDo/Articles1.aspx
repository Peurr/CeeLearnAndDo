<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Articles1.aspx.cs" Inherits="CeeLearnAndDo.Articles1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Article.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="article-content-wrapper">
        <div class="left-sidebar">
            <h2 class="sidebar-header">**Selected Category**</h2>
            <ul class="sidebar-ul">
                <li class="sidebar-subheader">Windows 10</li>
                <li class="li-normal"><a href="#" class="category-link">Apps.</a></li>
                <li class="li-normal"><a href="#" class="category-link">Cortana.</a></li>
                <li class="li-normal"><a href="#" class="category-link">Phone.</a></li>
                <li class="sidebar-subheader">Android</li>
                <li class="li-normal"><a href="#" class="category-link">Nexus Series.</a></li>
                <li class="li-normal"><a href="#" class="category-link">Microsoft Services.</a></li>
                <li class="li-normal"><a href="#" class="category-link">Leftover.</a></li>
            </ul>
        </div>
        <div class="article-holder">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="DataSource">
                <ItemTemplate>
                    <article class="article-item">
                <div class="article-image-container">
                    <img src="Images/twitter.png" class="article-image" />
                </div>
                <div class="article-description-container">
                    <div class="article-header-container">
                        <div class="tag-container">
                            <h2 class="tag-text"></h2>
                        </div>
                        <div class="date-container">
                            <p class="date-text">6 September 2015 - 20:56</p>
                        </div>
                    </div>
                    <div class="article-title-container">
                        <h1 class="article-title-text">Kees does not haal school awwww</h1>
                    </div>
                    <div class="article-introtext-container">
                        <p class="introtext-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
                    </div>
                </div>
            </article>
                </ItemTemplate>
                <GroupTemplate>
                    <div runat="server"></div>
                </GroupTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">AuthorId</th>
                                        <th runat="server">Title</th>
                                        <th runat="server">Picture</th>
                                        <th runat="server">Content</th>
                                        <th runat="server">File</th>
                                        <th runat="server">DateAdded</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                
            </asp:ListView>
            <asp:SqlDataSource ID="DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Article]"></asp:SqlDataSource>
           </div>
    </div>
</asp:Content>
