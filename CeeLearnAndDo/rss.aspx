<%@ Page Language="C#" AutoEventWireup="true" ContentType="text/xml" CodeBehind="rss.aspx.cs" Inherits="CeeLearnAndDo.rss" %>

<asp:repeater runat="server" id="repeaterRSS">
    <HeaderTemplate>
        <rss version="2.0">
            <channel>
                <title>Cee Learn And Do</title>
                <description>Dit is de RSS feed van Ceelearnanddo.nl, hier vind je de laaste CeeLearnAndDo updates.</description>
            
    </HeaderTemplate>
    <ItemTemplate>
        <item>
            <title><%# Eval("Title") %></title>
            <link></link>
            <description><%# Eval("Content") %></description>
            <author><%# Eval("Author") %></author>
            <pubDate><%# String.Format("{0:R}", Eval("DateAdded")) %></pubDate>
        </item>
    </ItemTemplate>
    <FooterTemplate>
        </channel>
    </rss>
    </FooterTemplate>
</asp:repeater>
