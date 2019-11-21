<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewVM.aspx.cs" Inherits="User_ViewVM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 189px;
            width: 1021px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style6">

<tr>
    <td>
         <asp:Panel ID="Panel1" runat="server">

             
                  <center>                
                      <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" Visible="False" Width="454px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#FFF7E7" BorderColor="White" BorderStyle="Groove" BorderWidth="3px" ForeColor="#8C4510" />
                    <Columns>
                         <asp:TemplateField HeaderText="Download">  
                                    <ItemTemplate>  
                                        <asp:LinkButton ID="lnkDownload" runat="server" CausesValidation="False" CommandArgument='<%# Eval("FileName") %>'  
                                            CommandName="Download" Text="Download"/>  
                                    </ItemTemplate>  
                       </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>

                  </center>
            
    
      </asp:Panel>
           </td>
</tr>
   
        <tr>
            <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </td>
        </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Username" Visible="false"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                </td>
            </tr>

      

        </table>

    

</asp:Content>

