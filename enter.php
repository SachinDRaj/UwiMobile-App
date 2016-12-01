<?php

function getDBConnection(){
    try{ 
        $db = new mysqli("localhost", "root", "", "uwiregistration");
        if ($db->connect_errno > 0)return null;
        return $db;
    }catch(Exception $e){ } 
    return null;
}

function findIdSub($edLevel,$sub){
	$db=getDBConnection();
	
	if ($db != null){
        $res = $db->query("SELECT * FROM `subject` join `subject_class` join `education` JOIN `education_level` WHERE `name`='$edLevel' and `subject_name`='$sub' group by `subject_id`");

        $row = $res->fetch_assoc();
        return $row['subject_id'];
    }
}


function findIdClass($edLevel,$class){
	$db=getDBConnection();
	
	if ($db != null){
        $res = $db->query("SELECT s.subject_class_id FROM `subject` join `subject_class` as `s` join `education` JOIN `education_level` WHERE `name`='$edLevel' and `class_name`='Science' group by `subject_class_id`");

        $row = $res->fetch_assoc();
        return $row['subject_class_id'];
    }
}

function addForFacultyLevel1($faculty_name,$passes_req,
	$sub_req_and_list,$sub_req_and_n,
	$sub_req_or_list,$sub_req_or_n,
	$class_req_list,$class_req_n){

	$edLevel="CSEC";
	$requirements_id=-1;
	$level_1_sub_req_and_id=NULL;
	$level_1_sub_req_or_id=NULL;
	$level_1_class_req_id=NULL;
	$db=getDBConnection();
	//INSERT registration and return its id
    if ($db != null){
    	//general insertion with all assignable n from arguments passed (from level 1)
        $sql = "INSERT INTO `requirements` (`requirements_id`, `level_1_passes_req`, `level_1_sub_req_and_id`, `level_1_sub_req_or_id`, `level_1_class_req_id`, `level_2_passes_req`, `level_2_sub_req_and_id`, `level_2_sub_req_or_id`, `level_2_class_req_id`, `level_1_sub_req_and_n`, `level_1_sub_req_or_n`, `level_1_class_req_n`, `level_2_sub_req_and_n`, `level_2_sub_req_or_n`, `level_2_class_req_n`) VALUES (NULL, '$passes_req', NULL, NULL, NULL, '0', NULL, NULL, NULL, '$sub_req_and_n', '$sub_req_or_n', '$class_req_n', '0', '0', '0');";
        $db->query($sql);
        if ($db->insert_id == 0)
        	error_log("Unable to save", 0);
        else{
        	$requirements_id=$db->insert_id;
        }
    }else error_log("Unable to connect to DB", 0);
	//returned id from registration is used to EDIT FACULTYS ID
    if ($db != null){
    	//general insertion with all assignable n from arguments passed (from level 1)
        $sql = "UPDATE `faculty` SET `requirements_id` = '$requirements_id' WHERE `faculty`.`name` = '$faculty_name'";
        $db->query($sql);
        if($db->affected_rows<1 || $db->affected_rows>1){
        	error_log("Unable to update", 0);
        }
        
    }else error_log("Unable to connect to DB", 0);

    //INSERT INTO qualify_sub_reg_and (col: qualify_sub_reg_and_id) id of requirements(requirements_id)) (col: subject_id) id of each <$sub_req_and_list> and into requirements (col: level_1_passes_req)<$sub_req_and_n>
    if ($db != null){
    	if($sub_req_and_list!=NULL)
	    	foreach($sub_req_and_list as $i){
	    		$temp=findIdSub($edLevel,$i);
		        $sql = "INSERT INTO `qualify_sub_req_and` (`qualify_sub_req_and_id`, `subject_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_1_sub_req_and_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);

	//INSERT INTO qualify_sub_reg_or (col: qualify_sub_reg_or_id) id of requirements(requirements_id)) (col: subject_id) id of each <$sub_req_or_list> and into requirements (col: level_1_passes_req)<$sub_req_or_n>
	if ($db != null){
		if($sub_req_or_list!=NULL)
			foreach($sub_req_or_list as $i){
				$temp=findIdSub($edLevel,$i);
		        $sql = "INSERT INTO `qualify_sub_req_or` (`qualify_sub_req_or_id`, `subject_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_1_sub_req_or_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);

	//INSERT INTO qualify_class_req (col: qualify_class_req_id) id of requirements(requirements_id)) (col: subject_class_id) id of each <$class_req_list> and into requirements (col: level_1_passes_req)<$passes_req>
	if ($db != null){
		if($class_req_list!=NULL)
			foreach($class_req_list as $i){
				$temp=findIdClass($edLevel,$i);
		        $sql = "INSERT INTO `qualify_class_req` (`qualify_class_req_id`, `subject_class_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_1_class_req_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);
	
    //update registration with new references
    if ($db != null){
    	//general insertion with all assignable n from arguments passed (from level 1)
        $sql = "UPDATE `requirements`
				SET `level_1_sub_req_and_id`='$level_1_sub_req_and_id',`level_1_sub_req_or_id`='$level_1_sub_req_or_id',`level_1_class_req_id`='$level_1_class_req_id'
				WHERE `requirements_id`='$requirements_id';";
        $db->query($sql);
        
    }else error_log("Unable to connect to DB", 0);

	$db->close();

	return $requirements_id;
}

function addForFacultyLevel2($reg_id,$passes_req,
	$sub_req_and_list,$sub_req_and_n,
	$sub_req_or_list,$sub_req_or_n,
	$class_req_list,$class_req_n){

	$edLevel="CAPE";
	$requirements_id=$reg_id;
	$level_2_sub_req_and_id=NULL;
	$level_2_sub_req_or_id=NULL;
	$level_2_class_req_id=NULL;
	$db=getDBConnection();

    //INSERT INTO qualify_sub_reg_and (col: qualify_sub_reg_and_id) id of requirements(requirements_id)) (col: subject_id) id of each <$sub_req_and_list> and into requirements (col: level_2_passes_req)<$sub_req_and_n>
    if ($db != null){
    	if($sub_req_and_list!=NULL)
	    	foreach($sub_req_and_list as $i){
	    		$temp=findIdSub($edLevel,$i);
		        $sql = "INSERT INTO `qualify_sub_req_and` (`qualify_sub_req_and_id`, `subject_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_2_sub_req_and_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);

	//INSERT INTO qualify_sub_reg_or (col: qualify_sub_reg_or_id) id of requirements(requirements_id)) (col: subject_id) id of each <$sub_req_or_list> and into requirements (col: level_2_passes_req)<$sub_req_or_n>
	if ($db != null){
		if($sub_req_or_list!=NULL)
			foreach($sub_req_or_list as $i){
				$temp=findIdSub($edLevel,$i);
		        $sql = "INSERT INTO `qualify_sub_req_or` (`qualify_sub_req_or_id`, `subject_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_2_sub_req_or_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);

	//INSERT INTO qualify_class_req (col: qualify_class_req_id) id of requirements(requirements_id)) (col: subject_class_id) id of each <$class_req_list> and into requirements (col: level_2_passes_req)<$passes_req>
	if ($db != null){
		if($class_req_list!=NULL)
			foreach($class_req_list as $i){
				$temp=findIdClass($edLevel,$i);
		        $sql = "INSERT INTO `qualify_class_req` (`qualify_class_req_id`, `subject_class_id`) VALUES (NULL, '$temp');";
		        $db->query($sql);
		        if ($db->insert_id == 0)
		        	error_log("Unable to save", 0);
		        else{
		        	$level_2_class_req_id=$db->insert_id;
		        }
		    }
    }else error_log("Unable to connect to DB", 0);
	
    //update registration with new references
    if ($db != null){
    	//general insertion with all assignable n from arguments passed (from level 1)
        $sql = "UPDATE `requirements`
				SET `level_2_sub_req_and_id`='$level_2_sub_req_and_id',`level_2_sub_req_or_id`='$level_2_sub_req_or_id',`level_2_class_req_id`='$level_2_class_req_id'
				WHERE `requirements_id`='$requirements_id';";
        $db->query($sql);
        
    }else error_log("Unable to connect to DB", 0);

	$db->close();
}

//try for level 1 edu
function addForProgramme(){

}
// function addForFacultyLevel1($faculty_name,$passes_req,
// 	$sub_req_and_list,$sub_req_and_n,
// 	$sub_req_or_list,$sub_req_or_n,
// 	$class_req_list,$class_req_n){

//
$reg_id=addForFacultyLevel1("Engineering",5,
	["English","Mathematics","Chemistry"],3,
	NULL,0,
	NULL,0);
addForFacultyLevel2("Engineering",2,
	["Mathematics"],1,
	["Physics/Chemistry"],1,
	NULL,0);
//
$reg_id=addForFacultyLevel1("Food & Agriculture",5,
	["English","Mathematics"],3,
	["Chemistry", "Biology", "Agricultural"],2,
	NULL,0);
addForFacultyLevel2("Food & Agriculture",2,
	Null,0,
	NULL,1,
	["Science"],1);
//
$reg_id=addForFacultyLevel1("Food & Agriculture",5,
	["English","Mathematics"],3,
	["Chemistry", "Biology", "Agricultural"],2,
	NULL,0);
addForFacultyLevel2("Food & Agriculture",2,
	Null,0,
	NULL,1,
	["Science"],1);
//
$reg_id=addForFacultyLevel1("Humanities & Education",5,
	["English"],1,
	NULL,0,
	NULL,0);
addForFacultyLevel2("Humanities & Education",2,
	Null,0,
	NULL,0,
	["Humanities"],1);
//
$reg_id=addForFacultyLevel1("Medical Sciences",5,
	["English","Mathematics", "Chemistry", "Physics", "Biology"],5,
	NULL,0,
	NULL,0);
addForFacultyLevel2("Medical Sciences",3,
	["Chemistry","Biology"],2,
	NULL,0,
	NULL,0);
//
$reg_id=addForFacultyLevel1("Science & Technology",5,
	["English","Mathematics"],2,
	["Chemistry", "Biology", "Agricultural Science", "Physics", "Geography"],2,
	NULL,0);
addForFacultyLevel2("Science & Technology",2,
	NULL,0,
	NULL,0,
	["Science"],1);
//
$reg_id=addForFacultyLevel1("Social Sciences",5,
	["English","Mathematics"],2,
	NULL,0,
	NULL,0);
addForFacultyLevel2("Social Sciences",2,
	NULL,0,
	NULL,0,
	NULL,0);

//remove autoincrement from primary keys of qualify tables
//fix subject insertion, some dont match
?>

