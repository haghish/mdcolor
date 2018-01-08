	
// Developed by E. F. Haghish
// Department of Mathematics and Computer Science (IMADA)
// University of Southern Denmark, Odense, Denmark
// =======================================================================
	
	// The mdcolor function
	// -------------------------------------------------------------------
    function markdownColor() {

    	document.body.innerHTML = document.body.innerHTML
        	.replace(/\[#\]/g, '</span>')
        	.replace(/\[-yellow\]/g, '<span style="background-color:#FAE768">')
        	.replace(/\[-green\]/g, '<span style="background-color:#CBEF66">')
        	.replace(/\[-blue\]/g, '<span style="background-color:#ABC5F6">')
        	.replace(/\[-pink\]/g, '<span style="background-color:#F1A8D0">')
        	.replace(/\[-purple\]/g, '<span style="background-color:#D6ABEF">')
        	.replace(/\[-gray\]/g, '<span style="background-color:#D6D6D6">')
        	.replace(/\[blue\]/g, '<span style="color:#00F">')
        	.replace(/\[pink\]/g, '<span style="color:#FF0080">')
        	.replace(/\[purple\]/g, '<span style="color:#8000FF">')
        	.replace(/\[green\]/g, '<span style="color:#408000">')
        	.replace(/\[orange\]/g, '<span style="color:#FF8000">')
        	.replace(/\[red\]/g, '<span style="color:#F00">')
        	.replace(/\[center\]/g, '<span style="display:block; text-align:center">')
        	.replace(/\[right\]/g, '<span style="display:block; text-align:right">')
    ;}
	
	// Create a function that loads JQuery first and then loads the mdcolor function
	function include(filename, onload) {
	    var head = document.getElementsByTagName('head')[0];
	    var script = document.createElement('script');
	    script.src = filename;
	    script.type = 'text/javascript';
	    script.onload = script.onreadystatechange = function() {
	        if (script.readyState) {
	            if (script.readyState === 'complete' || script.readyState === 'loaded') {
	                script.onreadystatechange = null;                                                  
	                onload();
	            }
	        } 
	        else {
	            onload();          
	        }
	    };
	    head.appendChild(script);
	}
	
	// the version 1.2.6 is the lightest version that runs the code
	include('http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.js', function() {
	    $(document).ready(function() {
	        markdownColor();
	    });
	});