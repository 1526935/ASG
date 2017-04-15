<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="HotSelling.aspx.cs" Inherits="Default.HotSelling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="scroll-left" > <p > HOT SELLING</p > </div >
<div class="row column text-center"></div> 
   <h2>GRAB YOURS NOW</h2>
    <div id="slideShowImages">
    <img src="~/images/exploreandmatch.jpg" runat="server" alt="Slide 1" width="500" height="500" />
    <img src="~/images/CalculationBoard.jpg" runat="server" alt="Slide 2" width="500" height="500" />
    <img src="~/images/countandmatch.jpg" runat="server" alt="Slide 3" width="500" height="500" />    
    <img src="~/images/see-n-spell.png" runat="server" alt="Slide 4" width="500" height="500" />
  </div> 
<script src="JavaScript1/JavaScript.js"></script>

    <div>&nbsp;<asp:Button ID="Details" runat="server" BorderStyle="Double" ForeColor="Blue" Height="45px" PostBackUrl="~/Products.aspx" Text="Click for more details" Width="229px" />
    </div>
</asp:Content>
