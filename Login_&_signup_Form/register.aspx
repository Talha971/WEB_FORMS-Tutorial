<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Login___signup_Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1{
            width: 400px;
            margin: auto;
            border: 1.5px solid black;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 174px;
        }
        .auto-style5 {
            width: 174px;
            height: 26px;
        }
        .form-heading{
            text-align:center;
            font-size:30px;
        }
        .btn-container{
            text-align:center ;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="form-heading" colspan="2">&nbsp;SIGN UP FORM&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <br />
                        First Name&nbsp; </td>
                    <td>
                        <asp:TextBox ID="FirstnameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="First Name Required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstnameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Last Name&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Last Name Required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Gender</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="170px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="Select" runat="server" Display="Dynamic" ErrorMessage="please select a gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address</td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Username </td>
                    <td>
                        <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UsernameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
      <td class="auto-style4">Password</td>
      <td>
          <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Strong Password with at least one uppercase/lowercase/digit/special character" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$">*</asp:RegularExpressionValidator>
                      </td>
  </tr>
                  <tr>
      <td class="auto-style4">Confirm Password </td>
      <td>
          <asp:TextBox ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox">*</asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="Password is not identical" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                      </td>
  </tr>
                  <tr class="btn-container">
      <td class="auto-style2" colspan="2" >
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" />
                      </td>
  </tr>
                  </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Large" />

        </div>
    </form>
</body>
</html>
