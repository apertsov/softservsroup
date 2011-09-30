<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SuperManBlog.LogOn.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #LogIn
        {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="LogIn" runat="server">
    <div>
        <asp:Login ID="Enter" runat="server" DestinationPageUrl="~/About.aspx" 
            LoginButtonText="Только для SuperMan" TitleText="Воойди" 
            UserNameLabelText="Name">
        </asp:Login>
    </div>
    </form>
</body>
</html>
