<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPost.aspx.cs" Inherits="AddPost.WebForm1" ValidateRequest = "false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Додати суперпост</title>
        <style type="text/css">
           .btn {width:60px;}
            table {border-style:none; background:#ccc; margin: 0 auto;}
            p {font-size:14px;}
        </style>
        <script type="text/javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script> 
        <script type="text/javascript" language="javascript">
            tinyMCE.init({
                mode: "textareas"
            }); 
        </script>
    </head>
    <body>
        <form id="form1" runat="server">
            
                <table> 
                    <tr>
                        <td align="left"><p><b>Тема суперпосту:</b></p></td>
                        <td align = "center"> 
                            <asp:TextBox runat="server" ID="topic" Width="280px"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="topic" ErrorMessage = "Введіть назву!" ForeColor = "red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan = "2" align = "center">
                            <p><b>Текст суперпосту</b><br />       
                            <asp:TextBox ID="txtNotes"
                                        TextMode="Multiline" runat="server" Height="232px" 
                                        style="margin-left: 0px" Width="507px" Text=""></asp:TextBox></p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan = "2" align = "right">
                            <asp:Button class="btn" ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
                            <asp:Button class="btn" ID="Button2" runat="server" Text="Clear" 
                                onclick="Button2_Click" />
                        </td>
                    </tr>
                </table>
         </form>
         <a href = "../Default.aspx">Main Page</a>
</body>
</html>
