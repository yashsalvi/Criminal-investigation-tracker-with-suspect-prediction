<%@ Page Language="C#" MasterPageFile = "~/Site.master" AutoEventWireup="true" CodeFile="ViewCaseHistory.aspx.cs" Inherits="ViewCaseHistory" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#196BA1" Text="View Case History"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Text="Case ID  :-"></asp:Label>
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
        Width="80%">
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

</div>
</asp:Content>