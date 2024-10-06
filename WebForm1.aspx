<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="curdWithImage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 450px;
            text-align:center;
            border:5px black ridge;
            margin:auto;
        }
        .auto-style3 {
            width: 106px;
        }
        .auto-style4 {
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td colspan="2"><h1>EMPLOYEE CURD OPERATION</h1></td>
                </tr>
                <tr>
                    <td class="auto-style3">ID</td>
                    <td>
                        <asp:TextBox ID="TxtID" runat="server" Height="22px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtID" Display="Dynamic" ErrorMessage="ID is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">NAME</td>
                    <td>
                        <asp:TextBox ID="TxtNamr" runat="server" Height="22px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtNamr" Display="Dynamic" ErrorMessage="Name is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">AGE</td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server" Height="22px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtAge" Display="Dynamic" ErrorMessage="Age is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">GENDER</td>
                    <td>
                        <asp:DropDownList ID="GenderDB" runat="server" Height="36px" Width="159px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="GenderDB" Display="Dynamic" ErrorMessage="Gender is Required" ForeColor="Red" InitialValue="Select" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">DESIGNATION</td>
                    <td>
                        <asp:DropDownList ID="DeginationDB" runat="server" Height="36px" Width="159px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Assistant Manager</asp:ListItem>
                            <asp:ListItem>Incharge</asp:ListItem>
                            <asp:ListItem>Operator</asp:ListItem>
                            <asp:ListItem>PA</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DeginationDB" Display="Dynamic" ErrorMessage="Designation is Required" ForeColor="Red" InitialValue="Select" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">SALARY</td>
                    <td>
                        <asp:TextBox ID="TxtSalary" runat="server" Height="22px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtSalary" Display="Dynamic" ErrorMessage="Salary is Required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">IMAGE</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="BtnSave" runat="server" Height="27px" Text="INSERT" Width="67px" OnClick="BtnSave_Click" />
&nbsp;
                        <asp:Button ID="BtnUpdate" runat="server" Height="27px" Text="UPDATE" Width="67px" />
&nbsp;
                        <asp:Button ID="BtnDelete" runat="server" Height="27px" Text="DELETE" Width="67px" />
&nbsp;
                        <asp:Button ID="BtnClear" runat="server" Height="27px" Text="RESET" Width="67px" />
&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
