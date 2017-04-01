<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     <div class="scroll-left" > <p > PRODUCTS INSTOCK</p > </div >
    <br />
    <div id="slideShowImages">
    <img src="~/images/exploreandmatch.jpg" runat="server" alt="Slide 1" width="800" height="500" />
    <img src="~/images/CalculationBoard.jpg" runat="server" alt="Slide 2" width="800" height="500" />
    <img src="~/images/countandmatch.jpg" runat="server" alt="Slide 3" width="800" height="500" />    
    <img src="~/images/see-n-spell.png" runat="server" alt="Slide 4" width="800" height="500" />
  </div>  
  <button id="slideShowButton"></button> 
  <script src="JavaScript1/JavaScript.js"></script>
    <article class="left_article">
        
        <br />
        <br />
    
      <h3>About us </h3>
  </article>
  
  <article class="left_article">
    <h3>For the young explorers, it is matter to acknowledge them with modern teaching tools to giving them opportunity to go around with their wonders. As technology teaching resources would help and encourage the children to make the learning more interesting. </h3>
      &nbsp;
      &nbsp;
    <h3>By creating this products to the little one is the solution for them who has difficulties in their understanding. There are a lot of different type of teaching resources we provide to promote education from basics reading, counting, recognizing colours and shapes. </h3>
    &nbsp;
    &nbsp;  
      <h3>By having us with you it will help you to improve your child's development. </h3>
       <p>LEARNING IS FUN !</p>
      </article>
   
    <aside class="right_article"><img src="images/diplomahat.png" alt="diploma hat" width="400" height="200" class="placeholder"/> </aside>
 <br />
    <br />
 <br />
    <br />
<br />
    <br />
    <div class="box">
    <h3>PRODUCTS OUT OF STOCK</h3>
    <div class="productsList">
        <br />
      <div class="product">
        <div class="productImage"><img src="~/images/countingGames.jpg" runat="server" width="286" alt="Counting Games"></div>
            <p class="product">CountingGames</p>
        <p class="product">Product Code: 00128</p>
            <p class="product">Price: BND9.90</p>
           <div class="productImage"><img src="~/images/baby3.LearningCubewithanimalsound.jpg" runat="server" width="286" alt="Learning Cube"></div>
            <p class="product">LearningCubeWithAnimalsSound</p>
        <p class="product">Product Code: 00140</p>
            <p class="product">Price: BND15.90</p>
          <a href="Products.aspx" class="button expanded">Click for more product details</a>   
</div>    
      </div>
            </div>
   


    <div class="row">
    <div class="columns">
      <p class="thumbnail_align"> <img src="~/images/autism.jpg" runat="server" alt="autism" class="thumbnail"/> </p>
      <h4>AUTISM</h4>
      <p>we are providing speciality products for a child with autism which it could help to reduce the symptoms of autism itself. </p>
    </div>
    
    <div class="columns">
      <p class="thumbnail_align"> <img src="~/images/baby.png" runat="server" alt="baby" class="thumbnail"/> </p>
      <h4>INFANT</h4>
      <p>By the age of 6 months your baby could have started with the educational tools, Which our products are away from chemicals and safe to be used for your baby. </p>
    </div>
    
    <div class="columns">
      <p class="thumbnail_align"> <img src="~/images/schools.png" runat="server" alt="school" class="thumbnail"/> </p>
      <h4>TEACHER</h4>
      <p>Let the young generations to enjoy their exploration with the effective teaching tools, whereas it will help them to easily understand on what they have learnt.</p>
    </div>
    
    <div class="columns">
      <p class="thumbnail_align"> <img src="~/images/family.jpg" runat="server" alt="family" class="thumbnail"/> </p>
      <h4>FAMILY</h4>
      <p>There are reasons of why the parent should started to be more aware for your young educators. It helps to encourage your child to get their confidence and self-trust on their capability.</p>
    </div>
 </div>
</asp:Content>
