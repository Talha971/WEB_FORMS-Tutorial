<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="app_state2.aspx.cs" Inherits="State_Management.Application_State.app_state2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Application State/app_state3.aspx" OnClick="LinkButton1_Click">Goto page 3</asp:LinkButton>
        </div>
    </form>
</body>
</html>
