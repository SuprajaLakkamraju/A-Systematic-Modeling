<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="User_UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 637px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center><h2>PROFILE</h2></center>
  <br /> <br /> 

    <table style="width: 100%" >

        <tr>
            <td style="text-align: right; " class="auto-style6">FIRST NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">LAST NAME</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">&nbsp;USERNAME&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">PASSWORD</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">EMAILID</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">MOBILE NUMBER</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style6">ADDRESS</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="UPDATE" Width="164px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Green" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>

    </table>


</asp:Content>



