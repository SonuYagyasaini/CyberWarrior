<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    .auto-style6 {
            width: 262px;
        }
        .auto-style7 {
            width: 147px;
        }
        .auto-style8 {
            width: 262px;
            font-weight: bold;
        }
        .auto-style9 {
            width: 282px;
            height: 179px;
        }
        .auto-style10 {
            width: 313px;
            height: 264px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Head Office:</td>
        <td class="auto-style6"><strong>Prayas Welfare Society</strong></td>
        <td rowspan="7">
            <img alt="" class="auto-style9" src="images/contactus.jpg" /></td>
    </tr>
    <tr>
        <td class="auto-style7">Address:-</td>
        <td class="auto-style8">48 C Singar Nagar Alambagh</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">Lucknow UP India</td>
    </tr>
    <tr>
        <td class="auto-style7">Contact:-</td>
        <td class="auto-style8">0522-4105242</td>
    </tr>
    <tr>
        <td class="auto-style7">Web:-</td>
        <td class="auto-style6"><strong>www.prayas.com</strong></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">Feedback Page</td>
    </tr>
    <tr>
        <td class="auto-style7">Name:-</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="6">
            <img alt="" class="auto-style10" src="images/feedback.jpg" /></td>
    </tr>
    <tr>
        <td class="auto-style7">Mobile No:-</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Email Id:-</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Comment:-</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server" Height="94px" TextMode="MultiLine" Width="278px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

