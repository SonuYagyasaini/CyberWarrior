<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgencyRegistration.aspx.cs" Inherits="AgencyRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
    <style type="text/css">
    .auto-style7 {
        height: 285px;
        width: 431px;
    }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center"><strong>Agency Registration Page</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Agency Name:-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style9" ErrorMessage="Agency Name must be entered.">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="12" style="text-align: center">
                <img alt="" class="auto-style7" src="images/regimage.jpg" /></td>
        </tr>
        <tr>
            <td >Contact Person:-</td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style9" ErrorMessage="Contact Person must be entered.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >Agency Address:-</td>
            <td >
                <asp:TextBox ID="TextBox3" runat="server" Height="116px" TextMode="MultiLine" Width="226px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style9" ErrorMessage="Address must be entered.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >Agency City:-</td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select City--</asp:ListItem>
                    <asp:ListItem>Lucknow</asp:ListItem>
                    <asp:ListItem>Unnao</asp:ListItem>
                    <asp:ListItem>Kanpur</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Hardoi</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style9" ErrorMessage="City Must be selected." Operator="NotEqual" ValueToCompare="--Select City--">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" >Pin Code:-</td>
            <td class="auto-style8" >
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="6"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style9" ErrorMessage="6 Digit Only" MaximumValue="999999" MinimumValue="100000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td >Agency Contact No:-</td>
            <td >
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" CssClass="auto-style9" ErrorMessage="10 Digit Only" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td >Agency Email Id:</td>
            <td >
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Email should in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td >Login Password:</td>
            <td >
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >Retype Password:-</td>
            <td >
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" CssClass="auto-style9" ErrorMessage="Password must be same.">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td >Security Question:-</td>
            <td >
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Question" DataValueField="Question">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ophConnectionString %>" SelectCommand="SELECT [Question] FROM [Question]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td >Answer:-</td>
            <td >
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox9" CssClass="auto-style9" ErrorMessage="Answer must be entered.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

