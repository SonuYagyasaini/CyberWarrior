<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdoptionRequest.aspx.cs" Inherits="AdoptionRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
    <style type="text/css">
        .auto-style6 {
            width: 433px;
        }
        .auto-style7 {
            width: 531px;
        }
        .auto-style8 {
            width: 290px;
        }
        .auto-style9 {
            width: 305px;
            height: 187px;
        }
        .auto-style10 {
            width: 307px;
            height: 225px;
        }
        .auto-style11 {
            width: 290px;
            height: 74px;
        }
        .auto-style12 {
            width: 433px;
            height: 74px;
        }
        .auto-style13 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3"><strong style="text-align: center">Adoption Request Form</strong></td>
        </tr>
        <tr>
            <td class="auto-style8">Name:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style13" ErrorMessage="Name must be entered.">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7" rowspan="7">
                <img alt="" class="auto-style9" src="images/adoprequest.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style8">Gender:-</td>
            <td class="auto-style6">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="FeMale" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Address:-</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="60px" TextMode="MultiLine" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="auto-style13" ErrorMessage="Address must be entered.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">City:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select City--</asp:ListItem>
                    <asp:ListItem>Unnao</asp:ListItem>
                    <asp:ListItem>Lucknow</asp:ListItem>
                    <asp:ListItem>Kanpur</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style13" ErrorMessage="City Must be Select." Operator="NotEqual" ValueToCompare="--Select City--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Pin Code:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Aadhaar No:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="12"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style13" ErrorMessage="12 Digit Only." MaximumValue="111111111111" MinimumValue="100000000000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Contact No:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" CssClass="auto-style13" ErrorMessage="10 Digit Only." MaximumValue="1111111111" MinimumValue="1000000000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email ID:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" CssClass="auto-style13" ErrorMessage="Email should be in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            <td rowspan="5">
                <img alt="" class="auto-style10" src="images/images.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style8">Profession:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select Profession--</asp:ListItem>
                    <asp:ListItem>Govt. Job</asp:ListItem>
                    <asp:ListItem>Private Job</asp:ListItem>
                    <asp:ListItem>Bussines</asp:ListItem>
                    <asp:ListItem>Farming</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style13" ErrorMessage="Profession Must be Select." Operator="NotEqual" ValueToCompare="--Select Profession--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Anual Income:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--Select Anual Income--</asp:ListItem>
                    <asp:ListItem>&lt;=100000</asp:ListItem>
                    <asp:ListItem>&gt;100000 - &lt;=300000</asp:ListItem>
                    <asp:ListItem>&gt;300000 - &lt;=500000</asp:ListItem>
                    <asp:ListItem>&gt;500000</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style13" ErrorMessage="Anual Income Must be Select." Operator="NotEqual" ValueToCompare="--Select Anual Income--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Reason:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox7" runat="server" Height="60px" TextMode="MultiLine" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" CssClass="auto-style13" ErrorMessage="Reason must be specify.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000; font-weight: 700"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

