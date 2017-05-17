<%@ Page Title="Home" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    
    <!--Code are adapted from https://w3school.com-->
    <div class="scroll-left" > <p > PRODUCTS INSTOCK</p > </div >
   
   <h2>Check Out Our Newest Products Instock</h2>
    <div id="slideShowImages">
    <img src="~/images/exploreandmatch.jpg" runat="server" alt="Slide 1" width="600" height="600" />
    <img src="~/images/CalculationBoard.jpg" runat="server" alt="Slide 2" width="600" height="600" />
    <img src="~/images/countandmatch.jpg" runat="server" alt="Slide 3" width="600" height="600" />    
    <img src="~/images/see-n-spell.png" runat="server" alt="Slide 4" width="600" height="600" />
  </div> 
    <script src="JavaScript1/JavaScript.js"></script>
<!--Script adapted from https://msdn.microsoft.com--> <asp:Button ID="Details" runat="server" BorderStyle="Solid" ForeColor="Blue" Height="45px" PostBackUrl="~/Products.aspx" Text="Product Details" Width="286px" BorderColor="Black" />
        
    <article class="left_article"> 

      <h3>About us </h3>
  </article>
  
  <article class="left_article">
    <h3>For the young explorers, it is matter to acknowledge them with modern teaching tools to giving them opportunity to go around with their wonders. As technology teaching resources would help and encourage your children to make the learning more interestings. </h3>
     
    <h3>We are promoting education from basic reading, counting, recognizing colours and shapes. </h3>
   
      <h3>Having us with you it will help you to improve your child's development. </h3>
       
      <h3>LEARNING IS FUN !</h3>
      </article>
   
    <aside class="right_article"><img src="~/images/diploma_hat.png" runat="server" alt="diploma hat" width="200" height="200" class="placeholder"/> </aside>
<div class="clearfix"></div>

     <div class="responsive">
</div>
     <div class="scroll-left" > <p > HOT SELLING</p > </div >
   <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/images/logo-bootstrap-shoping-cart.png" Width="199px" />
 
   <div class="row small-up-2 large-up-4">
      <div class="column">
        <img class="Products" src="~/images/Baby-Toys-ABC-123.jpg" runat="server" alt="ABC wooden blocks and number" width="350" height="350"/>
        <h4>ABC Wooden Blocks and Number</h4>
        <p>Product No: 111</p>
          <p>Price: BND35.00</p>
        <asp:ImageButton ID="AddToCartBtn1" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>

      <div class="column">
        <img class="Products" src="~/images/truck.jpg" runat="server" alt="Matching Shapes On Truck" width="350" height="350"/>
        <h4>Matching Shapes On The Truck</h4>
        <p>Product No: 112 </p>
          <p>Price: BND13.90</p>
      </div>
       <asp:ImageButton ID="AddToCartBtn2" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      <div class="column">
        <img class="Products" src="~/images/Wooden-toys-Counting-Bead-Abacus-Wire-Maze-Roller-Coaster-Wooden-Educational-Toy-for-Baby-Kids.jpg" runat="server" alt="Counting Beads" width="350" height="350"/>
        <h4>Counting Beads Abacus Wire Maze</h4>
        <p>Product No: 113</p>
          <p>Price: BND 25.00</p>
        </div>
       <asp:ImageButton ID="AddToCartBtn3" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />

      <div class="column">
        <img class="Products" src="~/images/countandmatch.jpg" runat="server" alt="Count and Match" width="350" height="350"/>
        <h4>Count and Match</h4>
        <p>Product No: 114 </p>
          <p>Price: BND13.90</p>
          <asp:ImageButton ID="AddToCartBtn4" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
  
      </div>
    </div>

     <div class="column">
        <img class="Products" src="~/images/regcolors.jpg" runat="server" alt="Identify on colors" width="350" height="350"/>
        <h4>Identify The Basic Colors</h4>
        <p>Product No: 115 
          <p>Price: BND12.90</p>
         <asp:ImageButton ID="AddToCartBtn5" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>
     <div class="column">
        <img class="Products" src="~/images/matchingshapes.jpg" runat="server" alt="Matching Shapes" width="350" height="350"/>
        <h4>Matching Shapes</h4>
        <p>Product No: 116 </p>
          <p>Price: BND12.00</p>
         <asp:ImageButton ID="AddToCartBtn6" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
      </div>

     <div class="column">
        <img class="Products" src="~/images/see-n-spell.png" runat="server" alt="See and Spell" width="350" height="350"/>
        <h4>See and Spell</h4>
        <p>Product No: 117 </p>
          <p>Price: BND22.90</p>
         <asp:ImageButton ID="AddToCartBtn7" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
</div>
     <div class="column" style="height: 360px">
        <img class="Products" src="~/images/woodenboard.jpg" runat="server" alt="Wooden Board" width="350" height="350"/>

        <h4>Wooden Board With Numbers</h4>
        <p>Product No: 118</p>
          <p>Price: BND28.90</p>
         <asp:ImageButton ID="AddToCartBtn8" runat="server" Height="67px" ImageUrl="~/images/shopping-cart.png" Width="79px" />
</div>
    <div class="scroll-left" > <p > POPULAR PRODUCTS </p > </div >
   
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ProductLists">
        <HeaderTemplate>
            <div>
        </HeaderTemplate>
<ItemTemplate>
    <div class="Product_list">
<a href="<%# Eval ("Id", "ViewProduct.aspx?Id={0}") %>"> <img src="~/images/woodenboard.jpg" runat="server" alt="See and Spell" width="200" height="200" />
    <div class="Paragraph"> <p><%#Eval ("ProductsName") %></p></div> 
    </a>
    </div>
</ItemTemplate>
            <FooterTemplate></div></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="ProductLists" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526935_1526935_educationalguides_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblTeachingProducts] ORDER BY [Id]"></asp:SqlDataSource>
       
    </div>
<div class="clearfix">
    <div class="row">
    <div class="columns">
        <p class="thumbnail_align"> <img src="~/images/autism.jpg" runat="server" alt="autism" class="thumbnail" /> </p>
        <h4>AUTISM</h4>
        <p>we are providing speciality products for a child with autism which it could help to reduce the symptoms of autism itself. </p>
    </div>

    <div class="columns">
        <p class="thumbnail_align"> <img src="~/images/baby.png" runat="server" alt="baby" class="thumbnail" /> </p>
        <h4>INFANT</h4>
        <p>By the age of 6 months your baby could have started with the educational tools, Which our products are away from chemicals and safe to be used for your baby. </p>
    </div>

    <div class="columns">
        <p class="thumbnail_align"> <img src="~/images/schools.png" runat="server" alt="school" class="thumbnail" /> </p>
        <h4>TEACHER</h4>
        <p>Let the young generations to enjoy their exploration with the effective teaching tools, whereas it will help them to easily understand on what they have learnt.</p>
    </div>

    <div class="columns">
        <p class="thumbnail_align"> <img src="~/images/family.jpg" runat="server" alt="family" class="thumbnail" /> </p>
        <h4>FAMILY</h4>
        <p>There are reasons of why the parent should started to be more aware for your young educators. It helps to encourage your child to get their confidence and self-trust on their capability.</p>
    </div>
        </div>
    </div>

    
</asp:Content>
