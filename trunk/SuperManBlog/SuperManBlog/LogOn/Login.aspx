<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SuperManBlog.LogOn.Login"  MasterPageFile="~/Site.master"%>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <title></title>
    <style type="text/css">
        #LogIn
        {
            margin-top: 15px;
        }
        #loginform
        {
            width:231px;
            margin: 0 auto;
            background:#ccf;
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="loginform">
        <asp:Login ID="Enter" runat="server" DestinationPageUrl="~/Default.aspx" 
            LoginButtonText="Только для SuperMan" TitleText="Войди" 
            UserNameLabelText="Name">
        </asp:Login>
    </div>
</asp:Content>
