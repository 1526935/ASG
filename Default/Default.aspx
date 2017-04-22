<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    
    <!--Code are adapted from https://w3school.com-->
    <div class="scroll-left" > <p > PRODUCTS INSTOCK</p > </div >
   
   <h2>Check Out Our Newest Products Instock</h2>
    <div id="slideShowImages">
    <img src="~/images/exploreandmatch.jpg" runat="server" alt="Slide 1" width="950" height="600" />
    <img src="~/images/CalculationBoard.jpg" runat="server" alt="Slide 2" width="950" height="600" />
    <img src="~/images/countandmatch.jpg" runat="server" alt="Slide 3" width="950" height="600" />    
    <img src="~/images/see-n-spell.png" runat="server" alt="Slide 4" width="950" height="600" />
  </div> 
    <script src="JavaScript1/JavaScript.js"></script>
<!--Script adapted from https://msdn.microsoft.com--> <asp:Button ID="Details" runat="server" BorderStyle="Solid" ForeColor="Blue" Height="45px" PostBackUrl="~/Products.aspx" Text="Product Details" Width="286px" BorderColor="Black" />
        
    <article class="left_article"> 
        <br />
        <br />
      <h3>About us </h3>
  </article>
  
  <article class="left_article">
    <h3>For the young explorers, it is matter to acknowledge them with modern teaching tools to giving them opportunity to go around with their wonders. As technology teaching resources would help and encourage your children to make the learning more interestings. </h3>
      &nbsp;
      &nbsp;
    <h3>We are promoting education from basic reading, counting, recognizing colours and shapes. </h3>
    &nbsp;
    &nbsp;  
      <h3>Having us with you it will help you to improve your child's development. </h3>
       <h3>&nbsp;</h3>
      <h3>LEARNING IS FUN !</h3>
      </article>
   
    <aside class="right_article"><img src="~/images/diploma_hat.png" runat="server" alt="diploma hat" width="200" height="200" class="placeholder"/> </aside>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
    <h2>Items out of stock</h2>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/blockstower.jpg" runat="server">
      <img src="~/images/blockstower.jpg" runat="server" alt="blocksTower" width="250" style="height: 414px"/>
    </a>
    <div class="desc">Wooden Blocks Tower<br />
        Product Code: 0081<br />
        Price: BND 12.90</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/alphabetselephant.jpg" runat="server">
      <img src="~/images/alphabetselephant.jpg" runat="server" alt="Alphabets" width="250" height="440"/>
    </a>
    <div class="desc">Alphabets With Elephant<br />
        Product Code: 0082<br />
        Price: BND 13.90</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/baby3.LearningCubewithanimalsound.jpg" runat="server">
      <img src="~/images/baby3.LearningCubewithanimalsound.jpg" runat="server" alt="Educational Cube" width="250" height="440"/>
    </a>
    <div class="desc">Educational Cube With Animal Sound<br />
        Product Code: 0086<br />
        Price: BND 18.00</div>
  </div>
</div>
<div class="clearfix"></div>

    <div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/outOfStock1.jpg" runat="server">
      <img src="~/images/outOfStock1.jpg" runat="server" alt="Matching Shape Cube" width="250" style="height: 379px"/>
    </a>
    <div class="desc">Matching Shapes Cube<br />
        Product Code: 0087<br />
        Price: BND 19.90</div>
  </div>
</div>
<div class="clearfix"></div>

     <div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/OutOfStockMahneticPuzzle.jpg" runat="server">
      <img src="~/images/OutOfStockMahneticPuzzle.jpg" runat="server" alt="Magnetic Puzzle" width="250" style="height: 373px"/>
    </a>
    <div class="desc">Magnetic Puzzles<br />
        Product Code: 0088<br />
        Price: BND 15.90</div>
  </div>
</div>
<div class="clearfix"></div>

     <div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/OutOfStockMiniBus.jpg" runat="server">
      <img src="~/images/OutOfStockMiniBus.jpg" runat="server" alt="Mini Bus With Sound" width="250" style="height: 366px"/>
    </a>
    <div class="desc">Mini Bus With Sound<br />
        Product Code: 0089<br />
        Price: BND 17.90</div>
  </div>
</div>
<div class="clearfix"></div>

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

</asp:Content>
