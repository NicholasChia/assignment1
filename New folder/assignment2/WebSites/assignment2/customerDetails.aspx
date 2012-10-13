<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="customerDetails.aspx.cs" Inherits="customerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/Pictures/CustomerDetails.jpg" />
    </h2>
    <p>
        <asp:Label ID="LabelMessage" ForeColor ="Red" runat="server"></asp:Label>
    </p>
    <h2>
        Customer Details
    </h2>
    <p>
        Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="name" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:Button ID="search" runat="server" Text="Search" 
            onclick="search_Click" />
    </p>
    <p>
        Home Address &nbsp;<asp:TextBox ID="address" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
    </p>
    <p>
        Email Address &nbsp;&nbsp;<asp:TextBox ID="eAddress" runat="server"></asp:TextBox>
    </p>
    <p>
        Sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:RadioButtonList ID="sex" runat="server" 
            RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0"  
            RepeatLayout="Flow">
            <asp:ListItem Value="Male">Male</asp:ListItem><asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        Date of Birth &nbsp;&nbsp;&nbsp;
        </p>
    <p>
        Payment Choice&nbsp;
        <asp:DropDownList ID="paymentChoice" runat="server">
           <asp:ListItem Value="Visa">Visa</asp:ListItem>
           <asp:ListItem Value="Master Card<">Master Card</asp:ListItem>
           <asp:ListItem Value="Americas Express">Americas Express</asp:ListItem> 
        </asp:DropDownList>
    </p>
    <p>
        Service Provider&nbsp;<asp:TextBox ID="serviceprovider" runat="server" 
            ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        Current Plan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="currentplan" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        Payout Figure
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="payout" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="next" runat="server" onclick="next_Click" Text="Next" />
    </p>
        
</asp:Content>

