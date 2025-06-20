<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="query_string1.aspx.cs" Inherits="State_Management.Query_String.query_string3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Student ID</td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" Width="326px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Name </td>
                    <td>
                        <asp:TextBox ID="NAMETextBox" runat="server" Width="325px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Age</td>
                    <td>
                        <asp:TextBox ID="AGETextBox" runat="server" Width="327px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="sendButton" runat="server" OnClick="Button1_Click" Text="send" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
