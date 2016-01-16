<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="CeeLearnAndDo.Admin.Articles" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><%=pageTitle%></title>
    <script>
        function jsToAsp() {
            var input = $('#summernote').code();
            document.getElementById("HiddenField1").value = input;
        }

        function jsToAspEdit() {
            var input = $('#summernote').code();
            document.getElementById("HiddenField2").value = input;
        }
    </script>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-striped" DataKeyNames="Id" DataSourceID="DataSource">
            <Columns>
                <asp:HyperLinkField DataTextField="Title" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Admin/Articles.aspx?action=edit&Id={0}" HeaderText="Title" />
                <%--<asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />--%>
                <asp:BoundField DataField="UserName" HeaderText="Author" SortExpression="AuthorId" />
                <asp:BoundField DataField="CatName" HeaderText="Category" SortExpression="CategoryId" />
                <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Article] INNER JOIN AspNetUsers ON Article.AuthorId=AspNetUsers.Id INNER JOIN Categories ON Article.CategoryId=Categories.Id"></asp:SqlDataSource>
    </section>
    <section class="overview-footer">
        <span class="amount">2 articles</span>
    </section>
    <%
        }
        else if (Request.QueryString["action"] == "new")
        {
    %>
    <div class="add">
        <div class="row">
            <div class="col-md-9">
                <asp:TextBox ID="txtTitle" CssClass="form-control" placeholder="Enter your title here.." autofocus="autofocus" runat="server"></asp:TextBox>
                <div class="input">
                    <div id="summernote"></div>
                    <asp:HiddenField ClientIDMode="Static" ID="HiddenField1" runat="server" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="col-md-3">
                <div class="postbox">
                    <h3>Publish your post</h3>
                    <div class="inside">
                        <div class="actions">
                            <a href="#">Nevermind</a><asp:Button ID="butPublish" OnClientClick="jsToAsp()" CssClass="btn btn-primary mtopbut" runat="server" Text="Publish" OnClick="butPublish_Click" />
                        </div>
                    </div>
                </div>
                <div class="postbox">
                    <h3>Categories</h3>
                    <div class="inside-cat">
                        <asp:DropDownList ID="categoryList" CssClass="form-control dropdownlist-margin" runat="server"></asp:DropDownList>
                    </div>
                    <!--
                    <div class="inside-cat">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>

                    </div>-->
                    <div class="actions">
                        <a class="add" href="Categories.aspx?action=new">+ Add new category</a>
                    </div>
                </div>
                <div class="postbox">
                    <h3>Tags</h3>
                    <div class="inside-cat">
                        <asp:TextBox ID="txtTags" CssClass="form-control tags" placeholder="Android, Windows Phone, Microsoft" runat="server"></asp:TextBox>
                        <p>Enter tags divided by comma's.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        }
        else if (Request.QueryString["action"] == "edit")
        {
    %>
    <div class="add">
        <div class="row">
            <div class="col-md-9">
                <asp:TextBox ID="EditTitle" CssClass="form-control" placeholder="Enter your title here.." autofocus="autofocus" runat="server"></asp:TextBox>
                <div class="input">
                    <div id="summernote"><%= editContent %></div>
                    <asp:HiddenField ClientIDMode="Static" ID="HiddenField2" runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="col-md-3">
                <div class="postbox">
                    <h3>Publish your post</h3>
                    <div class="inside">
                        <div class="actions">
                            <a href="#">Nevermind</a><asp:Button ID="btnEdit" OnClientClick="jsToAspEdit()" CssClass="btn btn-primary mtopbut" runat="server" Text="Publish" OnClick="btnEdit_Click" />
                        </div>
                    </div>
                </div>
                <div class="postbox">
                    <h3>Categories</h3>
                    <div class="inside-cat">
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control dropdownlist-margin" runat="server"></asp:DropDownList>
                    </div>
                    <!--
                    <div class="inside-cat">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                                Android
                            </label>
                        </div>

                    </div>-->
                    <div class="actions">
                        <a class="add" href="Categories.aspx?action=new">+ Add new category</a>
                    </div>
                </div>
                <div class="postbox">
                    <h3>Tags</h3>
                    <div class="inside-cat">
                        <asp:TextBox ID="editTags" CssClass="form-control tags" placeholder="Android, Windows Phone, Microsoft" runat="server"></asp:TextBox>
                        <p>Enter tags divided by comma's.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
