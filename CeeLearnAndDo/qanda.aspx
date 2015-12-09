<%@ Page Title="" Language="C#" MasterPageFile="~/Frontpage.Master" AutoEventWireup="true" CodeBehind="qanda.aspx.cs" Inherits="CeeLearnAndDo.qanda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/q&a.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="qa-content-wrapper">
        <div class="qa-content-container">
            <%--EXPAND BAR--%>
            <div class="expand-bar">
                <h1 class="expand-bar-h1">Ask a Question.</h1>
                <i class="fa fa-angle-double-down"></i>
            </div>
            <div class="expandable-div">

            </div>
            <div class="questions-container">
                <div class="question-item-container">
                    <%--QUESTION BOX--%>
                    <div class="question-item-question">
                        <div class="triangle"></div>
                        <div class="question-user-container">
                            <div class="question-user-profile-container">
                            </div>
                            <div class="question-user-name-container">
                                <p class="user-name">TheDiehard22</p>
                                <p class="question-date">9 september 2015 - 10:05</p>
                                <h2 class="question-question">Windows > Cortana</h2>
                            </div>
                        </div>
                        <div class="actual-question-container">
                            <p class="question-text">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.
                            </p>
                        </div>
                    </div>
                    <%--END QUESTION BOX--%>
                    <%--ANSWER BOX--%>
                    <div class="question-item-answer">
                        <div class="question-user-container">
                            <div class="question-user-profile-container">
                            </div>
                            <div class="question-user-name-container">
                                <p class="user-name">PeerieBoy</p>
                                <p class="question-date">9 september 2015 - 10:50</p>
                                <h2 class="question-question">Windows > Cortana</h2>
                            </div>
                        </div>
                        <div class="actual-question-container">
                            <p class="question-text">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.
                            </p>
                        </div>
                    </div>
                    <%--END ANSWER BOX--%>
                </div>
                <div class="question-item-container">
                    <%--QUESTION BOX--%>
                    <div class="question-item-question">
                        <div class="triangle"></div>
                        <div class="question-user-container">
                            <div class="question-user-profile-container">
                            </div>
                            <div class="question-user-name-container">
                                <p class="user-name">TheDiehard22</p>
                                <p class="question-date">9 september 2015 - 10:05</p>
                                <h2 class="question-question">Windows > Cortana</h2>
                            </div>
                        </div>
                        <div class="actual-question-container">
                            <p class="question-text">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.
                            </p>
                        </div>
                    </div>
                    <%--END QUESTION BOX--%>
                    <%--ANSWER BOX--%>
                    <div class="question-item-answer">
                        <div class="question-user-container">
                            <div class="question-user-profile-container">
                            </div>
                            <div class="question-user-name-container">
                                <p class="user-name">PeerieBoy</p>
                                <p class="question-date">9 september 2015 - 10:50</p>
                                <h2 class="question-question">Windows > Cortana</h2>
                            </div>
                        </div>
                        <div class="actual-question-container">
                            <p class="question-text">
                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.
                            </p>
                        </div>
                    </div>
                    <%--END ANSWER BOX--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
