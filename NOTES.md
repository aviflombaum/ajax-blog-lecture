1. The ability to load the comments for a post via AJAX

  Manually Trigger AJAX - Client Side Logic Model - Generic - Used in Ember, Angular, React, and jQuery
    A. We need to hijack the click event of the "Load Comments Link" to fire an ajax request
    B. Once we're in that click event, we need to fire an ajax request to get the DATA for the posts comments
    When the server responds with HTML
      C. Once we have that data, we need to place it in the DOM (add that DATA to the page)
    When the server responds with JSON
      C. Iterate of the JSON data and inject into the DOM as you please.


  Ask the Server for What to Do Via AJAX - Server Side Ajax Model - Remote True - Only in Rails
    A. Bind a generic AJAX Request for more instructions to the click event (asking the server for JS)
    B. Have the server render some JS as a response.
    C. the Browser (jQuery) will execute the JS Response.


2. The ability to submit a new comment via AJAX

  A. Hijack the submit even of our form.
  B. We need to take the form data and send it to the server as a AJAX Post request
    - How are we going to know the URL of that POST request
  C. We need actually take the data from the AJAX POST request and create the corresponding comment
  D. Send back HTML/JSON/JS of the comment that was added and inject that comment into the comment OL on the DOM.
