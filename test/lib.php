<?php

function getDBConnection(){
	try{ // Uses try and catch to handle any unforeseen errors
		$db = new mysqli("localhost","root","","admin");
		if ($db == null && $db->connect_errno > 0)return null;
		echo'connected';
		return $db;
	}catch(Exception $e){ echo 'null';} // We currently do nothing in the catch, but later we can log
	return null;
}

function getAllDepartments(){
	$db = getDBConnection();
	$programmes = [];
	if ($db != null){
		$sql = "SELECT facultyName, deptName FROM `faculty`JOIN `department` ON faculty.facultyid=department.facultyid";
		$res = $db->query($sql);
		while($res && $row = $res->fetch_assoc()){
			$programmes[] = $row;
			print_r($row);
		}
		$db->close();
	}
	return $programmes;
}


function getAllProgrammes(){
	$db = getDBConnection();
	$programmes = [];
	if ($db != null){
		$sql = "SELECT facultyName, deptName FROM `faculty`JOIN `department` ON faculty.facultyid=department.facultyid";
		$res = $db->query($sql);
		while($res && $row = $res->fetch_assoc()){
			$programmes[] = $row;
			print_r($row);
		}
		$db->close();
	}
	return $programmes;
}

getAllDepartments();