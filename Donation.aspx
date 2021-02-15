<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
    <style type="text/css">
        .auto-style6 {
            width: 371px;
        }
        .auto-style7 {
            width: 211px;
        }
        .auto-style8 {
            width: 288px;
            height: 217px;
        }
        .auto-style9 {
            width: 282px;
            height: 159px;
        }
        .auto-style10 {
            width: 211px;
            height: 26px;
        }
        .auto-style11 {
            width: 371px;
            height: 26px;
        }
        .auto-style12 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3"><strong>Welcome To Donation Page</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">Name:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" >Address:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="88px" TextMode="MultiLine" Width="249px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address Must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="6">
                <img alt="" class="auto-style8" src="images/d1.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style7" >City:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select City--</asp:ListItem>
                    <asp:ListItem>Unnao</asp:ListItem>
                    <asp:ListItem>Lucknow</asp:ListItem>
                    <asp:ListItem>Kanpur</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="City Must be select." Operator="NotEqual" style="color: #FF0000" ValueToCompare="--Select City--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >Mobile No:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style12" ErrorMessage="10 Digit Only." MaximumValue="9999999999" MinimumValue="1000000000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >Email:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style12" ErrorMessage="Email should be in correct format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" >Payment Mode:-</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select Payment Mode--</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Payment Mode Must be select." Operator="NotEqual" style="color: #FF0000" ValueToCompare="--Select Payment Mode--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >Card Type:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--Select Card Type--</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
                    <asp:ListItem>Credit Card</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Card Type Must be select." Operator="NotEqual" style="color: #FF0000" ValueToCompare="--Select Card Type--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >Amount:-</td>
            <td class="auto-style6" >
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Amount Must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="6" >
                <img alt="" class="auto-style9" src="images/d2.jpeg" /></td>
        </tr>
        <tr>
            <td class="auto-style7" >Card No:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server" MaxLength="16"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Card No. Must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >Card Expiry Date:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>--Select Month--</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>--Select Year--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >CVV No:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="CVV No Must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Payment" />
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >
                <asp:Label ID="Label2" runat="server" Text="Enter OTP" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="OTP Must be entered." style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Visible="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" >&nbsp;</td>
            <td class="auto-style6">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" >&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

