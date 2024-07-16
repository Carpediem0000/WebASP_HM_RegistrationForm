<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="WebASP_HM_RegistrationForm.Views.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Table ID="Table1" runat="server">

                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                            <asp:Label runat="server" Text="Registration" />
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="First Name"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="tb_FirstName" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tb_FirstName"/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Last Name"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="tb_LastName" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tb_LastName"/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Email"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tb_Email"/>
                            <asp:RegularExpressionValidator Display="Dynamic" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="tb_Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">Invalid Email</asp:RegularExpressionValidator>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Password" />
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="tb_Pass" runat="server" TextMode="Password" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tb_Pass"/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Confirm Password" />
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="tb_ConfirmPass" runat="server" TextMode="Password" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tb_ConfirmPass"/>
                            <asp:CompareValidator Display="Dynamic" ControlToValidate="tb_ConfirmPass" ControlToCompare="tb_Pass" Operator="Equal" runat="server" ErrorMessage="CompareValidator">Incorrect password</asp:CompareValidator>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                            <asp:Button ID="Button1" runat="server" Text="Create account" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>
</body>
</html>
