<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="first_webform_project.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Height="66px" OnClick="Button1_Click" Text="Click" Width="131px" />
            <asp:Label Visible="false" ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
