<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="State_Management.aspx.cs" Inherits="PostBack.State_Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User name </td>
                <td>
                    <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="passTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
                    <asp:Button ID="restoreButton" runat="server" OnClick="restoreButton_Click" style="height: 29px" Text="Restore " />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
