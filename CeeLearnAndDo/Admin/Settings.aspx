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
        if (Request.QueryString["action"] == "overview")
        {
    %>

    <section class="overview-header">
        <a class="btn btn-default" href="Articles.aspx?action=new" role="button">New Article</a>
        <div class="search">
            <div class="form-inline">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search for an article.." />
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </div>
        </div>
    </section>
    <section class="overview">
        <table class="table table-striped">
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Categories</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
            <tr>
                <td>Your second article</td>
                <td>Thediehard22</td>
                <td>Tablets, iOS</td>
                <td>09-09-2015</td>
                <td>
                    <ul>
                        <li><a href="#" class="edit" role="button"><i class="fa fa-pencil"></i></button></li>
                        <li><a href="#" class="delete" role="button" data-toggle="modal" data-target="#myModal"><i class="fa fa-times"></i></a></li>
                    </ul>
                    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                ...
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Your first article</td>
                <td>Peurr</td>
                <td>Smartphones, Android</td>
                <td>09-09-2015</td>
                <td>
                    <ul>
                        <li><a href="#" class="edit" role="button"><i class="fa fa-pencil"></i></button></li>
                        <li><a href="#" class="delete" role="button" data-toggle="modal" data-target="#myModal"><i class="fa fa-times"></i></a></li>
                    </ul>
                </td>
            </tr>
        </table>
        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">You are now deleting: "Your first article"!</h4>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to delete this?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="overview-footer">
        <span class="amount">2 articles</span>
    </section>

    <%
        }
        else if (Request.QueryString["action"] == "new")
        {
    %>
        
    <%
        }
        else if (Request.QueryString["action"] == "edit")
        {
    %>

    <%
        }
        else
        {
    %>
        <span style="color: red; font-size: 36pt;">404 ERROR</span>
    <%
        }
    %>
</asp:Content>
