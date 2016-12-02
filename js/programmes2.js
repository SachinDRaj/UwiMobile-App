var count=0;

var base_url = "programmes.php/api";
var lowerEdu;
var upperEdu;

$(document).ready(function(){ 
     $.get(base_url+"/getLowerEduList", displayLowerEduList, "json"); 
     $.get(base_url+"/getHigherEduList", displayHigherEduLis, "json"); 
});

function displayLowerEduList(records){
	var html="";
	for($i in records)
		html+="<li onclick='uncollapseLower("+$i+");'><a href='#home' data-toggle='pill'>"+records[$i].name+"</a></li>";

	$(".lower_edu_sec").append(html);
}

function displayHigherEduLis(records){
	console.log(records);
	var html="";
	for($i in records)
		html+="<li onclick='uncollapseHigher("+$i+");'><a href='#home' data-toggle='pill'>"+records[$i].name+"</a></li>";
	$(".higher_edu_sec").append(html);
}

function uncollapseLower(focus){
	
	$('#lower_edu_choose_sub').collapse("show");

	//since an edu was selected filter by that
	lowerEdu=focus;
}

function uncollapseHigher(focus){
	$('#higher_edu_choose_sub').collapse("show");

	//since an edu was selected filter by that
	lowerEdu=focus;
}

function addLowerSubject(){

}

function addSublvl1(){modal_notif_invalid
	//takes data from id="subToEnter"
	sub=$("#subToEnter").val();

	sub_original=sub;
	temp=sub.replace(/[^a-zA-Z ]/g, "");
	if(sub_original!=temp){
		$('#modal_notif_invalid').modal('show');
	}else if(sub_original=="") {
		$('#modal_notif_invalid').modal('show');
	}else{
		//remove data from the id="subToEnter"
		$("#subToEnter").val("");

		//puts it into form
		var html="<input id='formlvl1"+count+"' type='text' value='"+sub+"'>";
		$('#input_chosen_lvl1').append(html);

		//puts it into div for display (for display and deletion)
		var html="";
		html+="<div id='displayDiv"+count+"'' class='form-group'>";
		html+="  <label for='usr'>"+sub+"</label>";
		html+="  <input  onclick='removeSublvl1("+ count+");' type='button' value='Remove' class='btn pull-right'/>";
		html+="</div>";
		$('#display_chosen_lvl1').append(html)
	}

}

function removeSublvl1(count){
	//hides display 
	$("#displayDiv"+count).hide();

	//remove from form
	$("#formlvl1"+count).remove();

}

function removeSublvl2(count){
	//hides display 
	$("#displayDiv"+count).hide();

	//remove from form
	$("#formlvl2"+count).remove();

}

function addSublvl2(){
	//takes data from id="subToEnter"
	sub=$("#subToEnter2").val();
	sub_original=sub;
	temp=sub.replace(/[^a-zA-Z ]/g, "");
	if(sub_original!=temp){
		$('#modal_notif_invalid').modal('show');
	}else if(sub_original=="") {
		$('#modal_notif_invalid').modal('show');
	}else{
		//remove data from the id="subToEnter"
		$("#subToEnter2").val("");

		//puts it into form
		var html="<input id='formlvl2"+count+"' type='text' value='"+sub+"'>";
		$('#input_chosen_lvl2').append(html);

		//puts it into div for display (for display and deletion)
		var html="";
		html+="<div id='displayDiv"+count+"'' class='form-group'>";
		html+="  <label for='usr'>"+sub+"</label>";
		html+="  <input  onclick='removeSublvl2("+ count+");' type='button' value='Remove' class='btn pull-right'/>";
		html+="</div>";
		$('#display_chosen_lvl2').append(html)
	}

}



function submit(){
	

	$('form').serialize();

	var lowerValues = [];
	$('#input_chosen_lvl1 input').each(function() {
	    lowerValues.push($(this).val());
	});

	var higherValues = [];
	$('#input_chosen_lvl2 input').each(function() {
	    higherValues.push($(this).val());
	});

	var lowerValuesFormatted="";
	var higherValuesFormatted="";
	//format to seperate subjects by dashes
	//lower
	for(var i=0;i<lowerValues.length-1;i++){
		lowerValuesFormatted+=lowerValues[i]+"-";
	}
	lowerValuesFormatted+=lowerValues[lowerValues.length-1];

	//upper
	for(var i=0;i<higherValues.length-1;i++){
		higherValuesFormatted+=higherValues[i]+"-";
	}
	higherValuesFormatted+=higherValues[higherValues.length-1];

	console.log(lowerValuesFormatted);
	console.log(higherValuesFormatted);

	$.get(base_url+"/filterBySubjects/"+lowerValuesFormatted+"/"+higherValuesFormatted, displayProgrammes, "json"); 
}

function displayProgrammes(records){
    console.log(records);

	var htmlStr="";
    records.forEach(function(el){
        htmlStr += "<li><a id='tttab' href='#' data-toggle='modal' data-target='#myModal' onclick='retrieveData1("+el.programme_id+")'>"+el.programme_name+"</a></li>";
        $("#programmes_inserted").append(htmlStr);
    })
}