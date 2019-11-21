<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="RequestForVM.aspx.cs" Inherits="User_RequestForVM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Username" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Date" Visible="false"></asp:Label>
            </td>
        </tr>
       
      <tr>
          <td>CloudServer</td>
          <td>
              <asp:DropDownList ID="ddlCloudServer" runat="server" DataSourceID="SqlDataSource1" DataTextField="CloudServer" DataValueField="CloudServer"></asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SDN %>" SelectCommand="SELECT [CloudID], [CloudServer] FROM [tbl_Cloud]"></asp:SqlDataSource>
          </td>
      </tr>
        <tr>
            <td>VM</td>
            <td>
                <asp:DropDownList ID="ddlVM" runat="server" DataSourceID="SqlDataSource2" DataTextField="VM" DataValueField="VM"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SDN %>" SelectCommand="SELECT [ID], [VM] FROM [tbl_VM]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
            
    </table>

</asp:Content>

