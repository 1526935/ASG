<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     
 <div class="row column text-center"></div> 
    <div class="scroll-left" > <p > PRODUCTS INSTOCK</p > </div >
   <h2>Check Out Our Newest Products</h2>
    <div id="slideShowImages">
    <img src="~/images/exploreandmatch.jpg" runat="server" alt="Slide 1" width="500" height="300" />
    <img src="~/images/CalculationBoard.jpg" runat="server" alt="Slide 2" width="500" height="300" />
    <img src="~/images/countandmatch.jpg" runat="server" alt="Slide 3" width="500" height="300" />    
    <img src="~/images/see-n-spell.png" runat="server" alt="Slide 4" width="500" height="300" />
  </div> 

<!--Script adapted from https://msdn.microsoft.com-->
<script>
    window.addEventListener('load', slideShow, false);

    function slideShow() {

        /* GLOBALS **********************************************************************************************/

        var globals = {
            slideDelay: 4000, // The time interval between consecutive slides.
            fadeDelay: 35, // The time interval between individual opacity changes. This should always be much smaller than slideDelay.  
            wrapperID: "slideShowImages", // The ID of the <div> element that contains all of the <img> elements to be shown as a slide show.
            buttonID: "slideShowButton", // The ID of the <button> element that toggles the slide show on and off.
            buttonStartText: "Start Slides", // Text used in the slide show toggle button.
            buttonStopText: "Stop Slides", // Text used in the slide show toggle button.    
            wrapperObject: null, // Will contain a reference to the <div> element that contains all of the <img> elements to be shown as a slide show.
            buttonObject: null, // If present, will contain a reference to the <button> element that toggles the slide show on and off. The initial assumption is that there is no such button element (hence the false value).
            slideImages: [], // Will contain all of the slide image objects.
            slideShowID: null, // A setInterval() ID value used to stop the slide show.
            slideShowRunning: true, // Used to record when the slide show is running and when it's not. The slide show is always initially running.    
            slideIndex: 0 // The index of the current slide image.
        }

        /* MAIN *************************************************************************************************/

        initializeGlobals();

        if (insufficientSlideShowMarkup()) {
            return; // Insufficient slide show markup - exit now.
        }

        // Assert: there's at least one slide image.

        if (globals.slideImages.length == 1) {
            return; // The solo slide image is already being displayed - exit now.
        }

        // Assert: there's at least two slide images.

        initializeSlideShowMarkup();

        globals.wrapperObject.addEventListener('click', toggleSlideShow, false); // If the user clicks a slide show image, it toggles the slide show on and off.

        if (globals.buttonObject) {
            globals.buttonObject.addEventListener('click', toggleSlideShow, false); // This callback is used to toggle the slide show on and off.
        }

        startSlideShow();

        /* FUNCTIONS ********************************************************************************************/

        function initializeGlobals() {
            globals.wrapperObject = (document.getElementById(globals.wrapperID) ? document.getElementById(globals.wrapperID) : null);
            globals.buttonObject = (document.getElementById(globals.buttonID) ? document.getElementById(globals.buttonID) : null);

            if (globals.wrapperObject) {
                globals.slideImages = (globals.wrapperObject.querySelectorAll('img') ? globals.wrapperObject.querySelectorAll('img') : []);
            }
        } // initializeGlobals

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function insufficientSlideShowMarkup() {
            if (!globals.wrapperObject) { // There is no wrapper element whose ID is globals.wrapperID - fatal error.
                if (globals.buttonObject) {
                    globals.buttonObject.style.display = "none"; // Hide the not needed slide show button element when present.
                }
                return true;
            }

            if (!globals.slideImages.length) { // There needs to be at least one slide <img> element - fatal error.
                if (globals.wrapperObject) {
                    globals.wrapperObject.style.display = "none"; // Hide the not needed <div> wrapper element.
                }

                if (globals.buttonObject) {
                    globals.buttonObject.style.display = "none"; // Hide the not needed slide show button element.
                }

                return true;
            }

            return false; // The markup expected by this library seems to be present.
        } // insufficientSlideShowMarkup

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function initializeSlideShowMarkup() {
            var slideWidthMax = maxSlideWidth(); // Returns a value that is always in pixel units.
            var slideHeightMax = maxSlideHeight(); // Returns a value that is always in pixel units.

            globals.wrapperObject.style.position = "relative";
            globals.wrapperObject.style.overflow = "hidden"; // This is just a safety thing.
            globals.wrapperObject.style.width = slideWidthMax + "px";
            globals.wrapperObject.style.height = slideHeightMax + "px";

            var slideCount = globals.slideImages.length;
            for (var i = 0; i < slideCount; i++) {
                globals.slideImages[i].style.opacity = 0;
                globals.slideImages[i].style.position = "absolute";
                globals.slideImages[i].style.top = (slideHeightMax - globals.slideImages[i].getBoundingClientRect().height) / 2 + "px";
                globals.slideImages[i].style.left = (slideWidthMax - globals.slideImages[i].getBoundingClientRect().width) / 2 + "px";
            }

            globals.slideImages[0].style.opacity = 1; // Make the first slide visible.

            if (globals.buttonObject) {
                globals.buttonObject.textContent = globals.buttonStopText;
            }
        } // initializeSlideShowMarkup

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function maxSlideWidth() {
            var maxWidth = 0;
            var maxSlideIndex = 0;
            var slideCount = globals.slideImages.length;

            for (var i = 0; i < slideCount; i++) {
                if (globals.slideImages[i].width > maxWidth) {
                    maxWidth = globals.slideImages[i].width; // The width of the widest slide so far.
                    maxSlideIndex = i; // The slide with the widest width so far.
                }
            }

            return globals.slideImages[maxSlideIndex].getBoundingClientRect().width; // Account for the image's border, padding, and margin values. Note that getBoundingClientRect() is always in units of pixels.
        } // maxSlideWidth

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function maxSlideHeight() {
            var maxHeight = 0;
            var maxSlideIndex = 0;
            var slideCount = globals.slideImages.length;

            for (var i = 0; i < slideCount; i++) {
                if (globals.slideImages[i].height > maxHeight) {
                    maxHeight = globals.slideImages[i].height; // The height of the tallest slide so far.
                    maxSlideIndex = i; // The slide with the tallest height so far.
                }
            }

            return globals.slideImages[maxSlideIndex].getBoundingClientRect().height; // Account for the image's border, padding, and margin values. Note that getBoundingClientRect() is always in units of pixels.
        } // maxSlideHeight

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function startSlideShow() {
            globals.slideShowID = setInterval(transitionSlides, globals.slideDelay);
        } // startSlideShow

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function haltSlideShow() {
            clearInterval(globals.slideShowID);
        } // haltSlideShow

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function toggleSlideShow() {
            if (globals.slideShowRunning) {
                haltSlideShow();
                if (globals.buttonObject) {
                    globals.buttonObject.textContent = globals.buttonStartText;
                }
            }
            else {
                startSlideShow();
                if (globals.buttonObject) {
                    globals.buttonObject.textContent = globals.buttonStopText;
                }
            }
            globals.slideShowRunning = !(globals.slideShowRunning);
        } // toggleSlideShow

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        function transitionSlides() {
            var currentSlide = globals.slideImages[globals.slideIndex];

            ++(globals.slideIndex);
            if (globals.slideIndex >= globals.slideImages.length) {
                globals.slideIndex = 0;
            }

            var nextSlide = globals.slideImages[globals.slideIndex];

            var currentSlideOpacity = 1; // Fade the current slide out.
            var nextSlideOpacity = 0; // Fade the next slide in.
            var opacityLevelIncrement = 1 / globals.fadeDelay;
            var fadeActiveSlidesID = setInterval(fadeActiveSlides, globals.fadeDelay);

            function fadeActiveSlides() {
                currentSlideOpacity -= opacityLevelIncrement;
                nextSlideOpacity += opacityLevelIncrement;

                // console.log(currentSlideOpacity + nextSlideOpacity); // This should always be very close to 1.

                if (currentSlideOpacity >= 0 && nextSlideOpacity <= 1) {
                    currentSlide.style.opacity = currentSlideOpacity;
                    nextSlide.style.opacity = nextSlideOpacity;
                }
                else {
                    currentSlide.style.opacity = 0;
                    nextSlide.style.opacity = 1;
                    clearInterval(fadeActiveSlidesID);
                }
            } // fadeActiveSlides
        } // transitionSlides

    } // slideShow

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
    <article class="left_article"> 
        <hr id="horizontalLine" style="width: 1845px" /> 
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
       <h3>LEARNING IS FUN !</h3>
      </article>
   
    <aside class="right_article"><img src="~/images/diplomahat.png" runat="server" alt="diploma hat" width="450" height="200" class="placeholder"/> </aside>
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
      <img src="~/images/blockstower.jpg" runat="server" alt="blocksTower" width="250" style="height: 440px">
    </a>
    <div class="desc">Wooden Blocks Tower<br />
        Product Code: 0081<br />
        Price: BND 12.90</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/alphabetselephant.jpg" runat="server">
      <img src="~/images/alphabetselephant.jpg" runat="server" alt="Alphabets" width="250" height="440">
    </a>
    <div class="desc">Alphabets With Elephant<br />
        Product Code: 0082<br />
        Price: BND 13.90</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="~/images/baby3.LearningCubewithanimalsound.jpg" runat="server">
      <img src="~/images/baby3.LearningCubewithanimalsound.jpg" runat="server" alt="Educational Cube" width="250" height="440">
    </a>
    <div class="desc">Educational Cube With Animal Sound<br />
        Product Code: 0086<br />
        Price: BND 18.00</div>
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
