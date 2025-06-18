<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation_Form.aspx.cs" Inherits="Validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Student Registration Form</h2>
        </div>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <table style="width:100%;">
            <tr>
                   <td colspan="2">
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="992px" BackColor="Red" Font-Bold="True" Font-Size="X-Large" ForeColor="White" />
                   </td>
  
            </tr>

            <tr>
                <td class="auto-style1">Student Name </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Width="352px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Please Enter Name " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Width="352px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Re-Enter Email</td>
                <td>
                    <asp:TextBox ID="reEnterEmailTextBox" runat="server" Width="352px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="reEnterEmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="emailTextBox" ControlToValidate="reEnterEmailTextBox" Display="Dynamic" ErrorMessage="Email is not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
    <td>Class</td>
    <td>

        <asp:TextBox ID="ClassTextbox" runat="server" ForeColor="Black" Width="353px"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ClassTextbox" Display="Dynamic" ErrorMessage="Enter Valid Value between 1 &amp; 12" ForeColor="#CC0000" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ClassTextbox" Display="Dynamic" ErrorMessage="Pleaen Enter Class " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>

    </td>
</tr>
                        <tr>
    <td>Gender</td>
    <td>

       
        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="GenderGroup" Text="Male " />
        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="GenderGroup" Text="Female" />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter a gender" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>

       
    </td>
</tr>
            <tr>
            <td class="auto-style1"></td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="61px" Text="Submit" Width="131px" OnClick="Button1_Click" />
                </td>
            </table>

    </form>
</body>
</html>
