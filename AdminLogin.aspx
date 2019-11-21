<%@ Page Title="" Language="C#" MasterPageFile="~/SystematicMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 167px;
        }
        .auto-style8 {
            width: 36%;
            height: 143px;
            margin-left: 370px;
        }
        .auto-style9 {
            width: 147px;
            margin:auto;
        }
        .auto-style10 {
            width: 167px;
            height: 29px;
        }
        .auto-style11 {
            width: 147px;
            height: 29px;
        }
        .auto-style12 {
            width: 63px;
            height: 29px;
        }
        .auto-style13 {
            width: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table class="auto-style8" style="padding-left:13em">
        
        <h2 style="text-align:center"><strong style="color:white;">Admin Login</strong></h2>

        <tr>
            <td class="auto-style12" style="text-align:center; color:white;">Username</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="text-align:center; color:white;">Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="165px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Height="37px" Width="117px" />
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
