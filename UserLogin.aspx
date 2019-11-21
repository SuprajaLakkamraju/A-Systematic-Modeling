<%@ Page Title="" Language="C#" MasterPageFile="~/SystematicMasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 68px;
        }

        .auto-style7 {
            width: 206px;
        }

        .auto-style8 {
            width: 39%;
            margin-left: 379px;
        }

        .auto-style9 {
            width: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="auto-style8"  style="padding-left:13em">
      <h2 style="text-align:center"><strong style="color:white;">User Login</strong></h2>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" style="color:white;">Username</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" style="color:white;">Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="193px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <%--<asp:Button ID="Button2" runat="server" Text="NewUser" Width="95px" OnClick="Button2_Click" />--%>
                <a href="Registration.aspx" class="btn btn-link" style="font-size:13px">New User</a>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
             </tr>
        <tr>
            <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td> 
        </tr>
    </table>
</asp:Content>