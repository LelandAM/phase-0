// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image see html file

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  bodyElement = $('body');
  divElement = $('div');
  h1Element = $('h1')


//RELEASE 3:
  $('body > h1').css({'color': 'blue'});
  $('body > h1').css({'border': 'solid'});
  $('body > h1').css({'visibility': 'visible'})

  $('.mascot > h1').html('Fiery Skippers')


//RELEASE 4: Event Listener
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.jeffpippen.com/butterflies/fieryskipper081004-6948brunswick.coz.jpg')
    $(this).animate({height: '100px'}, 500, function(){
    	$(this).animate({height: '500px'}, 500)
    })
  	})
  $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', "dbc_logo.png")
  })


//RELEASE 5: Experiment on your own
	// added animation above





})  // end of the document.ready function: do not remove or write DOM manipulation below this.



// What is jQuery? 
//A JavaScript library useful for manipulating html
// What does jQuery do for you?
//I think of JQuery as css for movement.
// What did you learn about the DOM while working on this challenge?
//Learned soe jquery things to try out with it like mouseover, mouseleave and animate. 
