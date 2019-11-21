<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AcceptUserRegistration.aspx.cs" Inherits="ADMIN_AcceptUserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <table style="width: 100%">
            <tr>
                <td class="h70" style="text-align: center; font-size: 20pt; height: 70px">Accept User</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="253px" ScrollBars="Auto">
               <center>       
                     <asp:GridView ID="gvGetUsers" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="251px" OnRowCommand="gvGetUsers_RowCommand" Width="998px" OnSelectedIndexChanged="gvGetUsers_SelectedIndexChanged" >
                            <AlternatingRowStyle Backcolor="white" />
                            <columns>
                                <asp:BoundField DataField="UserId" HeaderText="USERID" />
                                <asp:BoundField DataField="FirstName" HeaderText="FIRSTNAME" />
                                <asp:BoundField DataField="LastName" HeaderText="LASTNAME" />
                                <asp:BoundField DataField="Username" HeaderText="USERNAME" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="MOBILENUMBER" />
                                <asp:BoundField DataField="Address" HeaderText="ADDRESS" />
                                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" />
                                <asp:BoundField DataField="_Status" HeaderText="_STATUS" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkAccept" runat="server" CommandArgument='<%# Eval("UserId") %>' CommandName="Accept" >Accept</asp:LinkButton>
                                        <asp:LinkButton ID="lnkReject" runat="server" CommandArgument='<%# Eval("UserId") %>' CommandName="Reject" >Reject</asp:LinkButton>
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
                    </asp:Panel>

                </td>
            </tr>
        </table>
    
</asp:Content>
