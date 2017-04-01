<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="HotSelling.aspx.cs" Inherits="Default.HotSelling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="~/css/Template.css" runat="server" rel="stylesheet" type="text/css" />
<div class="w3-container">
  <h2>Hot Selling Products</h2>
  
</div>

<div class="w3-content w3-display-container">
  <img class="mySlides" src="~/images/see-n-spell.png" runat="server" alt="see and spell" width="800" height="400">
  <img class="mySlides" src="~/images/CalculationBoard.jpg" runat="server" alt="calculationboard" width="800" height="400">
  <img class="mySlides" src="~/images/exploreandmatch.jpg" runat="server" alt="explore and match" width="800" height="400">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>

<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function currentDiv(n) {
        showDivs(slideIndex = n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = x.length }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" w3-white", "");
        }
        x[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " w3-white";
    }
</script>
    <br />

</asp:Content>
