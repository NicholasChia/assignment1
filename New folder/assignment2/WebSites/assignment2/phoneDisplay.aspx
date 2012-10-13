<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="phoneDisplay.aspx.cs" Inherits="phoneDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/PhoneModel.jpg" />
    </h2>
    <h2>
        Select a phone from the following List:
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="PhoneModel" Width="692px">
            <Columns>
                <asp:BoundField DataField="PhoneID" HeaderText="PhoneID" 
                    SortExpression="PhoneID" />
                <asp:BoundField DataField="PhoneModel" HeaderText="PhoneModel" 
                    SortExpression="PhoneModel" />
                <asp:BoundField DataField="PhoneBrand" HeaderText="PhoneBrand" 
                    SortExpression="PhoneBrand" />
                <asp:BoundField DataField="PhoneCost" HeaderText="PhoneCost" 
                    SortExpression="PhoneCost" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:ObjectDataSource ID="PhoneModel" runat="server" 
            SelectMethod="GetPhoneModels" 
            TypeName="au.edu.qut.fastapps04.sqlServerWebService"></asp:ObjectDataSource>
    </p>
        <asp:Button ID="back1" runat="server" onclick="back1_Click" Text="Back" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="next2" runat="server" Text="Next" onclick="next2_Click" />
</asp:Content>

