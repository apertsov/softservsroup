<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SuperManBlog._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<style type="text/css">
    #displaypost  
    {
        width:50%;
        margin: 10px auto;
        background:#ccccff;
        text-align: center;
    }
    a:link
    {
        color : #666666;
        text-decoration : none;
    }
    a:visited 
    {
        color : #666666;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to SuperMans SuperBlog!
    </h2>
  <asp:Label runat="server" ID="post"></asp:Label>
</asp:Content>
