<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customerDetails.aspx.cs" Inherits="BitMobile.customerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Customer Details
    </h2>
    <p>
        Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;<asp:TextBox ID="name" runat="server"></asp:TextBox>
    </p>
    <p>
        Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; :&nbsp;<asp:TextBox ID="age" runat="server"></asp:TextBox>
    </p>
    <p>
        Home Address :&nbsp;<asp:TextBox ID="address" runat="server"></asp:TextBox>
    </p>
    <p>
        Sex &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;: 
        Male&nbsp;<asp:RadioButton ID="male" runat="server" />
        Female&nbsp;<asp:RadioButton ID="female" runat="server" />
    </p>
    <p>
        Date of Birth &nbsp;&nbsp;&nbsp;: 
        <asp:DropDownList ID="day" runat="server">
           <asp:ListItem Value="1">1</asp:ListItem>
           <asp:ListItem Value="2">2</asp:ListItem>
           <asp:ListItem Value="3">3</asp:ListItem>
           <asp:ListItem Value="4">4</asp:ListItem>
           <asp:ListItem Value="5">5</asp:ListItem>
           <asp:ListItem Value="6">6</asp:ListItem>
           <asp:ListItem Value="7">7</asp:ListItem>
           <asp:ListItem Value="8">8</asp:ListItem>
           <asp:ListItem Value="9">9</asp:ListItem>
           <asp:ListItem Value="10">10</asp:ListItem>
           <asp:ListItem Value="11">11</asp:ListItem>
           <asp:ListItem Value="12">12</asp:ListItem>
           <asp:ListItem Value="13">13</asp:ListItem>
           <asp:ListItem Value="14">14</asp:ListItem>
           <asp:ListItem Value="15">15</asp:ListItem>
           <asp:ListItem Value="16">16</asp:ListItem>
           <asp:ListItem Value="17">17</asp:ListItem>
           <asp:ListItem Value="18">18</asp:ListItem>
           <asp:ListItem Value="19">19</asp:ListItem>
           <asp:ListItem Value="20">20</asp:ListItem>
           <asp:ListItem Value="21">21</asp:ListItem>
           <asp:ListItem Value="22">22</asp:ListItem>
           <asp:ListItem Value="23">23</asp:ListItem>
           <asp:ListItem Value="24">24</asp:ListItem>
           <asp:ListItem Value="25">25</asp:ListItem>
           <asp:ListItem Value="26">26</asp:ListItem>
           <asp:ListItem Value="27">27</asp:ListItem>
           <asp:ListItem Value="28">28</asp:ListItem>
           <asp:ListItem Value="29">29</asp:ListItem>
           <asp:ListItem Value="30">30</asp:ListItem>
           <asp:ListItem Value="31">31</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Payment Choice:
        <asp:DropDownList ID="paymentChoice" runat="server">
           <asp:ListItem Value="Visa">Visa</asp:ListItem>
           <asp:ListItem Value="Master Card<">Master Card</asp:ListItem>
           <asp:ListItem Value="Americas Express">Americas Express</asp:ListItem> 
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="back2" runat="server" Text="Back" onclick="back2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="next3" runat="server" Text="Next" onclick="next3_Click" />
    </p>

</asp:Content>
