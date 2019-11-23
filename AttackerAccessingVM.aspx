<%@ Page Title="" Language="C#" MasterPageFile="~/Attacker/AttackerMasterPage.master" AutoEventWireup="true" CodeFile="AttackerAccessingVM.aspx.cs" Inherits="Attacker_AttackerAccessingVM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 302px;
        }
        .auto-style7 {
            width: 512px;
            height: 59px;
        }
        .auto-style8 {
            height: 42px;
        }
        .auto-style9 {
            width: 302px;
            height: 42px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table class="auto-style7" style="padding-left:29em">

        <tr>
            <td class="auto-style9">
                Enter CloudServer<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
          
         <tr>
             <td class="auto-style6">
                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style6">
                 <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
             </td>
         </tr>

          <tr>
             <td class="auto-style6">
                 <center>
                 <asp:GridView ID="gvGetUsers" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="251px" OnRowCommand="gvGetUsers_RowCommand" Width="406px" OnSelectedIndexChanged="gvGetUsers_SelectedIndexChanged" Visible="False" >
                            <AlternatingRowStyle Backcolor="white" />
                            <columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" />
                                <asp:BoundField DataField="Username" HeaderText="Username" />
                                <asp:BoundField DataField="CloudServer" HeaderText="CloudServer" />
                                <asp:BoundField DataField="VM" HeaderText="VM" />
                                <asp:BoundField DataField="Status" HeaderText="Status" /> 
                                <asp:TemplateField HeaderText="Attack">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkAttack" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="Attack" >Attack</asp:LinkButton>
                                             </ItemTemplate>
                                </asp:TemplateField>  
                            </columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
             </center>
             </td>
         </tr>
    </table>

</asp:Content>

