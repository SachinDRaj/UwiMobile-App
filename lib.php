<?php


function getDBConnection(){
	try{ 
		$db = new mysqli("localhost","root","","uwiregistration");
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
