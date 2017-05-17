<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Default.Products1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <!--Code are adapted from https://w3school.com-->
<p> <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/images/logo-bootstrap-shoping-cart.png" Width="199px" /></p>  
    <div class="main-content">
		<div class="carouse1-container">		
		<div class="carouse1">		
		<div class="carouse1-image"><img src="~/images/Baby-Toys-ABC-123.jpg" runat="server" alt="ABC Blocks and Numbers" width="350" height="300" /></div>
		<div class="carouse1-image"><img src="~/images/regcolors.jpg" runat="server" alt="Identify on Colors" width="350" height="300" /></div>
		<div class="carouse1-image"><img src="~/images/truck.jpg" runat="server" alt="Matching shapes on the truck" width="300" height="300" /></div>
		<div class="carouse1-image"><img src="~/images/matchingshapes.jpg" runat="server" alt="Matching Shapes" width="300" height="300" /></div>
		<div class="carouse1-image"><img src="~/images/Wooden-toys-Counting-Bead-Abacus-Wire-Maze-Roller-Coaster-Wooden-Educational-Toy-for-Baby-Kids.jpg" runat="server" alt="Counting Beads" width="350" height="300" /></div>
	</div>
</div>    
 </div>   

    <h3>Product Details</h3>
     <div class="row small-up-2 large-up-4">
      <div class="column">
        <img class="Products" src="~/images/Baby-Toys-ABC-123.jpg" runat="server" alt="ABC wooden blocks and number" width="350" height="350"/>
        <h4>ABC Wooden Blocks and Number</h4>
        <p>Product No: 111</p>
          <p>Price: BND35.00</p>
        <asp:ImageButton ID="AddToCartBtn1" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>
<br />
        <br />
      <div class="column">
        <img class="Products" src="~/images/truck.jpg" runat="server" alt="Matching Shapes On Truck" width="350" height="350"/>
        <h4>Matching Shapes On The Truck</h4>
        <p>Product No: 112 </p>
          <p>Price: BND13.90</p>
      </div>
       <asp:ImageButton ID="AddToCartBtn2" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
<br />
        <br />
      <div class="column">
        <img class="Products" src="~/images/Wooden-toys-Counting-Bead-Abacus-Wire-Maze-Roller-Coaster-Wooden-Educational-Toy-for-Baby-Kids.jpg" runat="server" alt="Counting Beads" width="350" height="350"/>
        <h4>Counting Beads Abacus Wire Maze</h4>
        <p>Product No: 113</p>
          <p>Price: BND 25.00</p>
        </div>
       <asp:ImageButton ID="AddToCartBtn3" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
<br />
        <br />
      <div class="column">
        <img class="Products" src="~/images/countandmatch.jpg" runat="server" alt="Count and Match" width="350" height="350"/>
        <h4>Count and Match</h4>
        <p>Product No: 114 </p>
          <p>Price: BND13.90</p>
          <asp:ImageButton ID="AddToCartBtn4" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
  
      </div>
    </div>
<br />
        <br />
     <div class="column">
        <img class="Products" src="~/images/regcolors.jpg" runat="server" alt="Identify on colors" width="350" height="350"/>
        <h4>Identify The Basic Colors</h4>
        <p>Product No: 115 
          <p>Price: BND12.90</p>
         <asp:ImageButton ID="AddToCartBtn5" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>
<br />
        <br />
     <div class="column">
        <img class="Products" src="~/images/matchingshapes.jpg" runat="server" alt="Matching Shapes" width="350" height="350"/>
        <h4>Matching Shapes</h4>
        <p>Product No: 116 </p>
          <p>Price: BND12.00</p>
         <asp:ImageButton ID="AddToCartBtn6" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>
<br />
        <br />
     <div class="column">
        <img class="Products" src="~/images/see-n-spell.png" runat="server" alt="See and Spell" width="350" height="350"/>
        <h4>See and Spell</h4>
        <p>Product No: 117 </p>
          <p>Price: BND22.90</p>
         <asp:ImageButton ID="AddToCartBtn7" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
</div>
<br />
        <br />
     <div class="column">
        <img class="Products" src="~/images/woodenboard.jpg" runat="server" alt="Wooden Board" width="350" height="350"/>

        <h4>Wooden Board With Numbers</h4>
        <p>Product No: 118</p>
          <p>Price: BND28.90</p>
         <asp:ImageButton ID="AddToCartBtn8" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
</div>


</asp:Content>
