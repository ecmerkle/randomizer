#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

fluidPage(

tags$head(
tags$style(type="text/css", 
           "
           <style>
.scroll-up {
 height: 50px;	
 overflow: hidden;
 position: relative;
 background: yellow;
 color: orange;
 border: 1px solid orange;
}
.scroll-up div {
 position: absolute;
 width: 100%;
 height: 100%;
 margin: 0;
 line-height: 450px; /* controls space between lines */
 text-align: center;
 /* Starting position */
 -moz-transform:translateY(100%);
 -webkit-transform:translateY(100%);	
 transform:translateY(100%);
 /* Apply animation to this element */	
 -moz-animation: scroll-up .7s linear 10;
 -webkit-animation: scroll-up .7s linear 10;
 animation: scroll-up .7s linear 10;
}
/* Move it (define the animation) */
@-moz-keyframes scroll-up {
 0%   { -moz-transform: translateY(100%); }
 100% { -moz-transform: translateY(-100%); }
}
@-webkit-keyframes scroll-up {
 0%   { -webkit-transform: translateY(100%); }
 100% { -webkit-transform: translateY(-100%); }
}
@keyframes scroll-up {
 0%   { 
 -moz-transform: translateY(100%); /* Browser bug fix */
 -webkit-transform: translateY(100%); /* Browser bug fix */
 transform: translateY(100%); 		
 }
 100% { 
 -moz-transform: translateY(-100%); /* Browser bug fix */
 -webkit-transform: translateY(-100%); /* Browser bug fix */
 transform: translateY(-100%); 
 }
}"
)),

div(id="sctext", class="scroll-up", h1(htmlOutput("scrollingtext", style="font-size:150px"))))
