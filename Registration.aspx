<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 143px;
            text-align: right;
        }
        .auto-style4 {
            width: 143px;
            text-align: right;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            text-align: left;
        }
        .auto-style6 {
            width: 143px;
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            text-align: left;
        }
        .auto-style8 {
            height: 26px;
            width: 211px;
        }
        .auto-style9 {
            width: 211px;
        }
        .auto-style10 {
            height: 23px;
            width: 211px;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            width: 143px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            width: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style6" style="font-family: 'Lucida Bright'" id="lblUsername">User Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style7" style="font-family: 'Times New Roman', Times, serif; color: #FF0000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 'Lucida Bright'" id="lblEmail">E-mail:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; color: #FF0000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required."></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter a Valid E-mail Address." ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 'Lucida Bright'" id="lblPassword">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; color: #FF0000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'Lucida Bright'" id="lblRPassword">Confirm Password:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5" style="font-family: 'Times New Roman', Times, serif; color: #FF0000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm Password is required."></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both Passwords must match."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-family: 'Lucida Bright'" id="lblCountry">Country</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; color: #FF0000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="You must select a Country." InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="70px" />
                <input id="Reset1" class="auto-style14" type="reset" value="Reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
