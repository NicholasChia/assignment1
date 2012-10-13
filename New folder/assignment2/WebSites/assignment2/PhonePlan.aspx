<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PhonePlan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Image ID="Image1" runat="server" Height="62px" Width="875px" 
            ImageUrl="~/Pictures/PhonePlan.jpg" />
    </h2>
    <h2>
        Select a plan from the following list:
    </h2>
    <p>

        <asp:GridView ID="PhonePlanGrid" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="PhonePlan" Width="591px" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            onselectedindexchanged="PhonePlanGrid_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="PlanID" HeaderText="PlanID" 
                    SortExpression="PlanID" />
                <asp:BoundField DataField="PlanName" HeaderText="PlanName" 
                    SortExpression="PlanName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="PlanCost" HeaderText="PlanCost" 
                    SortExpression="PlanCost" />
                <asp:BoundField DataField="Period" HeaderText="Period" 
                    SortExpression="Period" />
                <asp:BoundField DataField="Avaliable" HeaderText="Avaliable" 
                    SortExpression="Avaliable" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
        <asp:ObjectDataSource ID="PhonePlan" runat="server" 
            SelectMethod="GetPhonePlans" 
            TypeName="au.edu.qut.fastapps04.sqlServerWebService">
        </asp:ObjectDataSource>
    </p>
    <p>
        <asp:Label ID="LabelMessage" ForeColor="Red" runat="server" Text="Label" 
            EnableViewState="False" Visible="False"></asp:Label>
    </p>
        <asp:Button ID="back1" runat="server" onclick="back1_Click" Text="Back" />
        <asp:Button ID="next1" runat="server" onclick="next1_Click1" Text="Next" />

</asp:Content>
