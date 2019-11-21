<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddingVM.aspx.cs" Inherits="ADMIN_AdminAddingVM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <table align="center">
       <tr>
           <td>Cloud Server</td>
           <td>
               <asp:DropDownList ID="ddlCloudServer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCloudServer_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="CloudServer" DataValueField="CloudServer" Width="69px"></asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SDN %>" SelectCommand="SELECT [CloudID], [CloudServer] FROM [tbl_Cloud]"></asp:SqlDataSource>
           </td>
       </tr>
<br /> <br />

<tr>
    <td>VM</td>
    <td>
        <asp:DropDownList ID="ddlVM" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVM_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="VM" DataValueField="VM" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SDN %>" SelectCommand="SELECT [ID], [VM] FROM [tbl_VM]"></asp:SqlDataSource>
    </td>
</tr>
       <br /> <br />
       <tr>
           <td>Storage</td>
           <td>
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           </td>
       </tr>
<br /> <br />

       <tr>
           <td>OS</td>
           <td>
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           </td>
       </tr>
       <br /> <br />

       <tr>
           <td>Switch</td>
           <td>
               <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
           </td>
       </tr>
       <tr>
           <td>
              <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Submit" Width="171px" CssClass="auto-style6" />
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
           </td>
       </tr>
    </table>

</asp:Content>
