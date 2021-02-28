<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewSus.aspx.cs" Inherits="ViewSus" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="headi" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#196BA1" Text="View Suspect"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="CaseID" runat="server" Text="Case ID  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="90px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        CssClass="intabular" GridLines="Horizontal" HorizontalAlign="Center" 
        Width="80%" AutoGenerateColumns="False">
        <Columns>
                <asp:BoundField HeaderText="Case ID" DataField="CaseID"/>
                <asp:BoundField HeaderText="Name" DataField="Name"/>
                <asp:BoundField HeaderText="Mobile No" DataField="Mobile" />
                <asp:BoundField HeaderText="Address" DataField="Addr" />
                <asp:BoundField HeaderText="Relation" DataField="Relation" />
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Rank" DataField="Rank" />
                <asp:BoundField HeaderText="Note" DataField="Note" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#196BA1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#196BA1" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#196BA1" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="1325px" Visible="False">
        <br />
        <table width="80%" >
                <tr>
                    <td class="style4">
                    <asp:Image ID="Image1" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image2" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label16" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label20" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image3" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label21" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label22" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label23" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label24" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label26" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label28" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label30" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image4" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label31" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label32" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label33" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label34" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label36" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label38" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label39" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label40" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image5" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label41" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label42" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label44" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label45" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label46" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label47" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label48" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label49" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label50" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image6" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label51" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label52" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label53" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label54" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label55" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label56" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label57" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label58" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label59" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label60" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image7" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label61" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label62" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label63" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label64" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label65" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label66" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label67" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label68" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label69" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label70" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image8" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label71" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label72" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label73" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label74" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label75" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label76" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label77" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label78" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label79" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label80" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image9" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label81" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label82" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label83" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label84" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label85" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label86" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label87" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label88" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label89" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label90" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>

                <tr>
                    <td class="style4">
                    <asp:Image ID="Image10" runat="server" Height="125px" Width="120px" />
                    </td>
                    <td align="left" class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label91" runat="server" Text="Name  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label92" runat="server"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label93" runat="server" Text="Mobile  :-"></asp:Label>&nbsp;
                        <asp:Label ID="Label94" runat="server"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label95" runat="server" Font-Bold="True" 
                            Text="Physical  Score:-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label96" runat="server" Font-Bold="True"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label97" runat="server" Font-Bold="True" 
                            Text="Logical Score  :-"></asp:Label>
                        &nbsp;<asp:Label ID="Label98" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                    <td>
                        
                        <asp:Label ID="Label99" runat="server" Font-Bold="True" 
                            Text="Probability  :-"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label100" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
    <br />

</div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
            width: 232px;
        }
        .style4
        {
            width: 140px;
        }
    </style>
</asp:Content>
