<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "catalog_17031201";

    $conn = new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die("Connection error");
    }
    $xml=new DomDocument ("1.0");
    $xml->formatOutput=true;
    $Company = $xml->createElement("Company");
    $xml->appendChild($Company);

    $Logo = $xml->createElement("logo");
    $Company->appendChild($Logo);
   
    $Company_Details=$conn->query("SELECT * FROM comp_info");
   
    while($row=mysqli_fetch_assoc($Company_Details)){

        $Comp_Name = $xml->createElement("Name",$row["Name"]);
        $Company->appendChild($Comp_Name);
        
        $Descriptions = $xml->createElement("Descriptions");
        $Company->appendChild($Descriptions);
            $Description1 = $xml->createElement("Description1",$row["Description1"]);
            $Descriptions->appendChild($Description1);
            $Description2 = $xml->createElement("Description2",$row["Description2"]);
            $Descriptions->appendChild($Description2);
    }
    
   
   
    $Departments = $xml->createElement("Departments");
    $Company->appendChild($Departments);
   
    $Departments_Info=$conn->query("SELECT * FROM Departments");
    while($row=mysqli_fetch_assoc($Departments_Info)){
        $Department = $xml->createElement("Department");
        $Department->setAttribute("Dept_ID",$row["Dept_ID"]);
        $Departments->appendChild($Department);
        $Dept_Name = $xml->createElement("Dept_Name",$row["Dept_Name"]);
        $Department->appendChild($Dept_Name);
        $Details = $xml->createElement("Detail_Dept",$row["Detail_Dept"]);
        $Department->appendChild($Details);
     }

    $Projects = $xml->createElement("Projects");
    $Company->appendChild($Projects);
   
    $CProjects=$conn->query("SELECT * FROM Projects");
    while($row=mysqli_fetch_assoc($CProjects)){
        $Project = $xml->createElement("Project");
        $Project->setAttribute("Category",$row["Category"]);
        $Projects->appendChild($Project);
        $Proj_Name = $xml->createElement("Proj_Name",$row["Proj_Name"]);
        //$name->setAttribute("title",$row[]);
        $Project->appendChild($Proj_Name);
        $Details = $xml->createElement("Details",$row["Details"]);
        $Project->appendChild($Details);
    }
    $Comp_Staffs = $xml->createElement("Comp_Staffs");
    $Company->appendChild($Comp_Staffs);

     $Staff_info=$conn->query("SELECT * FROM Comp_Staffs");
    while($row=mysqli_fetch_assoc($Staff_info)){
        $Staff = $xml->createElement("Staff");
        $Staff->setAttribute("Staff_ID",$row["Staff_ID"]);
        $Comp_Staffs->appendChild($Staff);
        $title = $xml->createElement("Title",$row["Title"]);
        $Staff->appendChild($title);
        $Staff_Name = $xml->createElement("Staff_Name",$row["Staff_Name"]);
        $Staff->appendChild($Staff_Name);
        $Staff_Email = $xml->createElement("Staff_Email",$row["Staff_Email"]);
        $Staff->appendChild($Staff_Email);
        $Staff_Phone = $xml->createElement("Staff_Phone",$row["Staff_Phone"]);
        $Staff->appendChild($Staff_Phone);
        $Staff_Post =$xml->createElement("Post",$row["Post"]);  
         $Staff->appendChild($Staff_Post); 
         $StaffDepartment = explode(";",$row["staff_department"]);
         foreach ($StaffDepartment as $i) {

        $StaffDept=$conn->query("select Dept_Name from departments where Dept_ID=\"$i\"");
        while($row= mysqli_fetch_assoc($StaffDept)){
            $staff_department = $xml->createElement("staff_department",$row["Dept_Name"]);
         $Staff->appendChild($staff_department); 
     }

        }
    }


    $Comp_Info = $xml->createElement("Comp_Info");
    $Company->appendChild($Comp_Info);

    $Company_Info=$conn->query("SELECT * FROM comp_info");
   while($row=mysqli_fetch_assoc($Company_Info)){
     $Address = $xml->createElement("Address",$row["Address"]);
        $Comp_Info->appendChild($Address);
         $Contacts = $xml->createElement("Contacts");
         $Comp_Info->appendChild($Contacts);
             $Mobile = $xml->createElement("Mobile",$row["Mobile"]);
             $Contacts->appendChild($Mobile);
             $Tel = $xml->createElement("Tel",$row["Tel"]);
             $Contacts->appendChild($Tel);
             $Fax = $xml->createElement("Fax",$row["Fax"]);
             $Contacts->appendChild($Fax);
         $Feadback = $xml->createElement("Feadback");
         $Comp_Info->appendChild($Feadback);
             $Email = $xml->createElement("Email",$row["Email"]);
             $Feadback->appendChild($Email);
            $Web = $xml->createElement("Web",$row["Web"]);
         $Feadback->appendChild($Web);
     }

    echo "<xmp>".$xml->saveXML()."</xmp>";
    $xml->save("catalog_17031201.xml");
?>