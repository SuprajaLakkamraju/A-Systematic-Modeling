<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUploadingFiles.aspx.cs" Inherits="ADMIN_AdminUploadingFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 1082px;
            margin-left: 197px;
        }
        .auto-style7 {
            width: 299px;
        }
        .auto-style8 {
            width: 514px;
        }
        .auto-style9 {
            width: 514px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table class="auto-style6">
        <tr>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"><b>FILE-UPLOAD</b></td>
        </tr>

    <tr>
        <td></td>
    </tr>
         <tr>
        <td></td>
    </tr>
        <tr>
            <td class="auto-style9"><em>FILE ID</em></td>
            <td class="auto-style12"><em>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style17"></asp:Label>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style9"><em>SELECT FILE</em></td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="38px" Text="UPLOAD" Width="102px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
