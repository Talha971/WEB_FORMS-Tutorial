﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="app_state1.aspx.cs" Inherits="State_Management.Application_State.app_state1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
    </div>
    <table cellpadding="4" cellspacing="4" class="auto-style1">
        <tr>
            <td class="auto-style2">User Name </td>
            <td>
                <asp:TextBox ID="UserTextBox" runat="server" Width="293px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
