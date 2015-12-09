<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="Frontpage.aspx.cs" Inherits="CeeLearnAndDo.Frontpage1" %>

<%--Code for in the HEAD section--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Styles/HomePage.css" rel="stylesheet" />
    <script src="Javascript/buttonJumbotron.js"></script>

</asp:Content>

<%--Code for in the content space--%>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="jumbotron-container">
        <div class="introtext-container">
            <p>Here at Cee Learn And Do we want you to learn to use software at a higher level. We make content about for example: hidden features, things you might not have known, relevant news or useful tips.</p>
        </div>
        <div class="button">
            <p class="learnmore">Learn More</p>
        </div>
    </div>
    <section class="section1">
        <div class="quick-info-wrapper">
            <div class="quick-info-container">
                <div class="quick-info">
                    <div class="quick-info-image-container">
                        <i class="fa fa-question-circle fa-fw"></i>
                    </div>
                    <h3 class="quick-info-header">Questions and Answers.</h3>
                    <p class="quick-info-paragraph">Ask us anything ranging from our website to our professional consulting and such!</p>

                </div>
                <div class="quick-info">
                    <div class="quick-info-image-container">
                        <i class="fa fa-briefcase fa-fw"></i>
                    </div>
                    <h3 class="quick-info-header">References</h3>
                    <p class="quick-info-paragraph">Check out our previous works so you can get an idea of who you will be working with ;)</p>

                </div>
                <div class="quick-info">
                    <div class="quick-info-image-container">
                        <i class="fa fa-newspaper-o fa-fw"></i>
                    </div>
                    <h3 class="quick-info-header">All Articles</h3>
                    <p class="quick-info-paragraph">Browse all articles on our website on one web page.</p>

                </div>
                <div class="quick-info">
                    <div class="quick-info-image-container fa-fw">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <h3 class="quick-info-header">Shopping Cart</h3>
                    <p class="quick-info-paragraph">Browse all articles on our website on one web page.</p>
                </div>
            </div>
        </div>
    </section>
    <section class="mail-a-friend-wrapper">
        <div class="mail-a-friend-container">
            <div class="mail-a-friend">
                <h1 class="maf-h1">Mail-a-friend!</h1>
                <asp:TextBox ID="txt_email" runat="server" CssClass="normal-textbox" Placeholder="Send e-mail to example@hotmail.com"></asp:TextBox>
                <asp:TextBox ID="txt_bericht" TextMode="MultiLine" runat="server" CssClass="normal-textbox textarea" Placeholder="Personal message to your friend &nbsp;&nbsp; Use HTML markup!"></asp:TextBox>
                <asp:Button ID="btn_verstuurMail" runat="server" Text="Button" CssClass="normal-button" />
            </div>
        </div>
    </section>
</asp:Content>
