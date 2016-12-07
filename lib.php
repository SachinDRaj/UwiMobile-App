<?php


function getDBConnection(){
	try{ 

		$db = new mysqli_connect("localhost","root","","uwiregistration");  

        //$db = new mysqli("138.197.20.97","uwienrol","R8v3Wd0S24ZZ4WtB","uwienrol");
		if ($db == null && $db->connect_errno > 0)return null;
		return $db;
	}catch(Exception $e){ } 
	return null;
}


function getAllProgrammes($val){
	$db = getDBConnection();
	$programmes = [];
	if ($db != null){
		$sql = "SELECT u.* FROM `undergraduate` u, `programme` p WHERE p.faculty_id = $val AND u.undergraduate_id = p.undergraduate_id GROUP BY u.name";
		$res = $db->query($sql);
		while($res && $row = $res->fetch_assoc()){
			$programmes[] = $row;
		}
		$db->close();
	}
	return $programmes;
}


function getAllData($val){
	$db = getDBConnection();
	$programmes = [];
	if ($db != null){
		$sql = "SELECT * FROM `programme` p WHERE p.undergraduate_id = $val";
		$res = $db->query($sql);
		while($res && $row = $res->fetch_assoc()){
			$programmes[] = $row;
		}
		$db->close();
	}
	return $programmes;
}

function getAllData2($val){
	$db = getDBConnection();
	$programmes = [];
	if ($db != null){
		$sql = "SELECT * FROM `programme` p WHERE p.programme_id = $val";
		$res = $db->query($sql);
		while($res && $row = $res->fetch_assoc()){
			$programmes[] = $row;
		}
		$db->close();
	}
	return $programmes;
}

function getLowerEduList(){
	$db=getDBConnection();
	$arr=[];
	if ($db != null){
        $res = $db->query("SELECT * FROM `education_level` el inner join `education` e on el.education_level_id=e.education_level_id where el.education_level_id=1");
        while($row = $res->fetch_assoc()){
        	$arr[]=$row;
        }
        
        return $arr;
    }
    $db->close();
}
function getHigherEduList(){
	$db=getDBConnection();
	$arr=[];
	if ($db != null){
        $res = $db->query("SELECT * FROM `education_level` el inner join `education` e on el.education_level_id=e.education_level_id where el.education_level_id=2");
        while($row = $res->fetch_assoc()){
        	$arr[]=$row;
        }
        
        return $arr;
    }
    $db->close();
}

function getProgrammes($loweredu,$higheredu){
    //create lower list
    $lowerEduList = explode('-', $loweredu);
    //create higher list
    $higherEduList = explode('-', $higheredu);

    $progs=[];

    //attempt to filter
    $higher=true;
    $lower=true;

    $programmes = getAllProgrammesSpec();
    $requirements=getAllRequirements();

    $count=0;
    
    foreach($programmes as $eachProg){
        $reqCol=findRequirementOfId($requirements,$eachProg['faculty_id']);
        $higher=true;
        $lower=true;

        //attempt filtering with lower------------------

        //subs required to pass
        if(count($lowerEduList)<=$reqCol['level_1_passes_req']) $lower=false;
        
        //sub_and
        if($reqCol['level_1_sub_req_and_n']!=0){
            $temp=sub_req_and($reqCol['level_1_sub_req_and_id']);
            $lower=andBool($lowerEduList,$temp);
        }

        //sub_or
        if($lower!=false){//unnecessary check
            if($reqCol['level_1_sub_req_or_n']!=0){
                $temp=sub_req_or($reqCol['level_1_sub_req_or_id']);
                $n=sub_req_or($reqCol['level_1_sub_req_or_n']);
                $lower=orBool($lowerEduList,$temp,$n);
            }
        }
        //class
        if($lower!=false){//unnecessary check
            if($reqCol['level_1_class_req_n']!=0){
                $temp=class_req($reqCol['level_1_class_req_id']);
                $n=class_req($reqCol['level_1_sub_class_n']);
                $lower=orBool($lowerEduList,$temp,$n);
            }
        }


        //attempt filtering with higher------------------

        //subs required to pass
        if(count($higherEduList)<$reqCol['level_2_passes_req']) $higher=false;

        //sub_and
        if($reqCol['level_2_sub_req_and_n']!=0){
            $temp=sub_req_and($reqCol['level_2_sub_req_and_id']);
            $higher=andBool($higherEduList,$temp);
        }

        //sub_or
        if($higher!=false){//unnecessary check
            if($reqCol['level_2_sub_req_or_n']!=0){
                $temp=sub_req_or($reqCol['level_2_sub_req_or_id']);
                $n=sub_req_or($reqCol['level_2_sub_req_or_n']);
                $higher=orBool($higherEduList,$temp,$n);
            }
        }
        //class
        if($higher!=false){//unnecessary check
            if($reqCol['level_2_class_req_n']!=0){
                $temp=class_req($reqCol['level_2_class_req_id']);
                $n=class_req($reqCol['level_2_class_req_n']);
                $higher=orBool($higherEduList,$temp,$n);
            }
        }

        if($higher && $lower){
            $prog=[];
            $prog['programme_id']=$eachProg['programme_id'];
            $prog['programme_name']=$eachProg['programme_name'];

            $progs[]=$prog;
        }
    }
    return $progs;

}

function findRequirementOfId($requirements,$id){
    foreach($requirements as $el){
        if($el['requirements_id']==$id){
            return $el;
        }
    }
}

function andBool($passes, $requirements){
    //if all of the requirements elements cna be found in $passes before $passes ends, then it is viable
    $countToReach=count($requirements);
    $count=0;
    foreach($requirements as $reqEl){
        foreach($passes as $passEl){
            if($passEl== $reqEl) {
                $count++;
                break;
            }
        }
        if($count==$countToReach) return true;//for one particular case a requirement wasnt found in the pass
    }
    return false;
}

function orBool($passes, $requirements,$n){
    //if at least $n el of requirements is found in passes, then it is viable
    $count = 0;

    foreach($requirements as $reqEl){
        foreach($passes as $passEl){
            if($passEl== $reqEl) {
                $count++;
                break;
            }
        }
        if($count==$n) return true;//the count was found while runnign through each loop
    }
    return false; // after running through everything, enough matches werent found
}

function getAllProgrammesSpec(){
    $db=getDBConnection();
    $arr=[];
    if ($db != null){
        $res = $db->query("SELECT `programme_id`, `programme_name`, `faculty_id` FROM `programme`");
        while($row = $res->fetch_assoc()){
            $arr[]=$row;
        }
        
        return $arr;
    }
    $db->close();
}

//for getProgrammes
function getAllRequirements(){
    $db=getDBConnection();
    $arr=[];
    if ($db != null){
        $res = $db->query("SELECT * FROM `requirements`");
        while($row = $res->fetch_assoc()){
            $arr[]=$row;
        }
        
        return $arr;
    }
    $db->close();
}
//returns a list of subjects
function sub_req_and($id){
    $db=getDBConnection();
    $arr=[];
    if ($db != null){
        $res = $db->query("SELECT b.subject_name FROM `qualify_sub_req_and` a inner join `subject` b on a.subject_id=b.subject_id where `qualify_sub_req_and_id`='$id'");
        while($res!=NULL && $row = $res->fetch_assoc()){
            $arr[]=$row['subject_name'];
        }
        
        return $arr;
    }
    $db->close();
}

//returns a list of subjects
function sub_req_or($id){
    $db=getDBConnection();
    $arr=[];
    if ($db != null){
        $res = $db->query("SELECT b.subject_name FROM `qualify_sub_req_or` a inner join `subject` b on a.subject_id=b.subject_id where `qualify_sub_req_or_id`='$id'");
        while($res!=NULL && $row = $res->fetch_assoc()){
            $arr[]=$row['subject_name'];
        }
        
        return $arr;
    }
    $db->close();
}

//returns a list of subjects
function class_req($id){
    $db=getDBConnection();
    $arr=[];
    if ($db != null){
        $res = $db->query("SELECT  c.subject_name FROM `qualify_class_req` a inner join `subject_class` b on a.subject_class_id=b.subject_class_id   inner join `subject` c on b.subject_class_id=c.subject_class_id where `qualify_class_req_id`='$id'");
        while($res!=NULL && $row = $res->fetch_assoc()){
            $arr[]=$row['subject_name'];
        }
        
        return $arr;
    }
    $db->close();
}



?>