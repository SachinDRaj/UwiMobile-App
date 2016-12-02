"use strict";
$(document).ready(function(){ 
    $("#myTab a").click(function(e){
        e.preventDefault();
        $(this).tab('show');
    });
});

$(document).ready(function(){ 
    $("#tab1 a").click(function(e){
        e.preventDefault();
        $(this).tab('show');
    });
});



var base_url = "programmes.php/api";


$(document).ready(function(){
    console.log("All Elements in the Page was successfully loaded, we can begin our application logic");
   	retrieveProgrammes(0);
    
});


function retrieveProgrammes(val){
    $.get(base_url+ "/programmes/" +val, processAllProgrammes, "json"); 

}

function retrieveData(val){
	$.get(base_url+ "/data/" +val, processAllData, "json");
	
}

//gets passed the programme id and opens the modal--
function retrieveData1(val){
	$.get(base_url+ "/data2/" +val, processAllData2, "json");
}

//creates a list of programmes--
// second list
function processAllData(records){
    	
    	$("#tab2").html("");
    	
    	var htmlStr="";
        records.forEach(function(el){
        
            htmlStr += "<li><a id='tttab' href='#' data-toggle='modal' data-target='#myModal' onclick='retrieveData1("+el.programme_id+")'>"+el.programme_name+"</a></li>";
            $("#tab2").append(htmlStr);
        })
}


// modal data
function processAllData2(records){
   
    	$("#name").html("");
    	$("#desc").html("");
    	$("#time").html("");
    	$("#edu1").html("");
    	$("#edu2").html("");
    	$("#edu3").html("");
    	$("#career").html("");
    	$("#job").html("");

    	var fstate,pstate,estate;

    	

        records.forEach(function(el){
        
        	if (el.fulltime==0) {
    	 		fstate = "NO";
	    	}else 
	    		fstate = "YES";
	    	if (el.parttime==0) {
	    	 	pstate = "NO";
	    	}else 
	    		pstate = "YES";
	    	if (el.evening==0) {
	    	 	estate = "NO";
	    	}else 
	    		estate = "YES";

            var htmlStr = "<button type='button' class='close' data-dismiss='modal'>&times;</button><h4 class='modal-title'>"+el.programme_name+"</h4></div>";
            var htmlStr1 = "<b><h5>Programme Description</h5></b><p>"+el.programme_desc+"</p>";
            var htmlStr2 = "<b>Full Time: </b>"+fstate+"<b> Part Time: </b>"+pstate+"<b> Evening: </b>"+estate;

            var htmlStr3 = "<b><h5>Requirements: CSEC</h5></b><p>"+el.education1+"</p>"; 
            var htmlStr4 = "<b><h5>Requirements: CAPE</h5></b><p>"+el.education2+"</p>"; 
            var htmlStr5 = "<b><h5>Other Requirements:</h5></b><p>"+el.other_requirements+"</p>"; 

            var htmlStr6 = "<b><h5>Possible Careers:</h5></b><p>"+el.careers+"</p>";
            var htmlStr7 = "<b><h5>Job Titles:</h5></b><p>"+el.job_titles+"</p>";

            $("#name").append(htmlStr);
            $("#desc").append(htmlStr1);
            $("#time").append(htmlStr2);
            $("#edu1").append(htmlStr3);
            $("#edu2").append(htmlStr4);
            $("#edu3").append(htmlStr5);
            $("#career").append(htmlStr6);
            $("#job").append(htmlStr7);
        })
}

//first list 
function processAllProgrammes(records){
    	
    	$("#tab1").html("");
    	
        records.forEach(function(el){
        
            var htmlStr = "<li><a id='ttab' href='#' onclick='retrieveData("+el.undergraduate_id+")'>"+el.name+"</a></li>";
         
            $("#tab1").append(htmlStr);
        })
}


$("#col1 ul li a[href^='#']").on('click', function(e) {

       // prevent default anchor click behavior
       e.preventDefault();

       // animate
       $('html, body').animate({
           scrollTop: $(this.hash).offset().top-75
         }, 300, function(){
   
           // when done, add hash to url
           // (default click behaviour)
           window.location.hash = this.hash;
         });

});




