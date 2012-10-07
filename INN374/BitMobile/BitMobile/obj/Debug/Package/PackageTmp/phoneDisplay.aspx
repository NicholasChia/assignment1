<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="phoneDisplay.aspx.cs" Inherits="BitMobile.phoneDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Phone List: Retreive from Database</p>
    <p>
        <asp:Button ID="back1" runat="server" onclick="back1_Click" Text="Back" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="next2" runat="server" Text="Next" onclick="next2_Click" />
    </p>
</asp:Content>
