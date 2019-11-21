<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminCloudServer.aspx.cs" Inherits="ADMIN_AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table> 
   
    <tr>
        <td>Cloud</td>
        <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        </tr>
    </td>
        

&nbsp; <br />
    <br />
        <tr>
            <td>Virtual Machine</td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
   <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>

                </td>
            </tr>
        </table>
</asp:Content>

