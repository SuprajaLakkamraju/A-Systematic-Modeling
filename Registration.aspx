<%@ Page Title="" Language="C#" MasterPageFile="~/SystematicMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
  
        .auto-style9 {
            text-align: center;
            font-size: x-large;
            height: 54px;
            color: #FF6600;
            width: 100%;
             font-style:oblique;
        }
        .auto-style11 {
        text-align: right;
        color: #000099;
        padding-left:6em;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">

        <h2 class="auto-style9" colspan="7"><strong style="color:white;">REGISTRATION</strong></h2>
        <tr>
            <td class="auto-style11"><em style="color:white;">FIRST NAME</em></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">LAST NAME</em></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">USER NAME</em></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">PASSWORD</em></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Outset" TextMode="Password" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">EMAILID</em></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">MOBILE NUMBER</em></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*" ForeColor="#FF5050" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><em style="color:white;">ADDRESS</em></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Outset" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="*" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="7">
                <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Submit" Width="136px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="7">
                <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="Green" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
