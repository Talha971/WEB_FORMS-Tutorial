<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Login___signup_Form.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .auto-style2 {
            width: 173px;
        }
        table{
            margin:auto;
            width:350px;
            border:2px solid black;
        }
        .heading{
            text-align: center;
            font-size:20px;
        }
        .link{
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" >
                <tr>
                    <td  colspan="2">
                        <h3 class="heading">Login Form</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">User Name </td>
                    <td>
                        <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="Please Enter User Name " ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password </td>
                    <td>
                        <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <input type="checkbox" onchange="document.getElementById('PassTextBox').type=this.checked ? 'text' : 'password' "/> Show password
                    </td>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Height="45px" Text="Login" Width="124px" OnClick="LoginButton_Click" />
                    </td>
                </tr>
                  <tr>
                    <td colspan="2"  class="link">

                        <asp:LinkButton  href="register.aspx" ID="LinkButton1" runat="server">Not Yet Registerd? Click Here</asp:LinkButton>

                    </td>
                  </tr>
            </table>
        </div>
    </form>
</body>
</html>
