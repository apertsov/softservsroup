<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowPost.aspx.cs" Inherits="SuperManBlog.ShowPost.WebForm1"  MasterPageFile="~/Site.master"%>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <title>Post</title>
    <style type = "text/css">
        #wrapper {
            background: white;
            width:700px;
            margin: 0 auto;
        }
        #head {
            background:#ccccff; 
            text-align:center;
        }
        #text {
            margin-top:20px; 
            background:#ffff99; 
            padding:10px; 
            float:inherit; 
            text-align:justify;
        }
        #comment {
            margin-top:50px; 
            height:auto; 
            background:#ccf; 
            padding-left:10px; 
            clear:inherit;
        }
    </style>
     <script type="text/javascript" src="../tinymce/jscripts/tiny_mce/tiny_mce.js"></script> 
        <script type="text/javascript" language="javascript">
            tinyMCE.init({
                mode: "textareas"
            }); 
        </script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
     <asp:Label runat="server" ID="topic"></asp:Label>
     <asp:Label runat="server" ID="text"></asp:Label>
    <div id = "comment">
             <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="comm"></asp:Label><br /><br />
                        Нікнейм:  <asp:TextBox ID="name" runat= "server"></asp:TextBox><br /><br />
                        <asp:TextBox TextMode="MultiLine" ID="txtComment" runat="server" Height="106px" Width="491px"></asp:TextBox>
                        <asp:Button ID="send" runat="server" Text = "Send" onclick="send_Click" />
                    </td>
                </tr>
            </table> 
        
    </div>
    <asp:Button ID="delete" runat="server" Text="Delete this Post" 
         onclick="delete_Click" />
    </asp:Content>

