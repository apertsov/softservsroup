<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPost.aspx.cs" Inherits="AddPost.WebForm1" ValidateRequest = "false"  MasterPageFile="~/Site.master"%>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
        <title>Додати суперпост</title>
        <style type="text/css">
           .btn {width:60px;}
            table {border-style:none; background:#ccc; margin: 0 auto;}
            p {font-size:14px;}
        </style>
        <script type="text/javascript" src="../tinymce/jscripts/tiny_mce/tiny_mce.js"></script> 
        <script type="text/javascript" language="javascript">
            tinyMCE.init({
                mode: "textareas"
            }); 
        </script>
  </asp:Content>
   <asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
        
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
                            <asp:Button class="btn" ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Save" />
                            <asp:Button class="btn" ID="btnClear" runat="server" Text="Clear" 
                                onclick="btnClear_Click" />
                        </td>
                    </tr>
                </table>
         
         <p align = "center"><a href = "../Default.aspx">Main Page</a></p>
</asp:Content>
