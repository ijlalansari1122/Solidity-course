
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Student registration system

contract Student_registration {
    
// declaring enum 1

enum  Department {Artificial_Intelligence, Blockchain , E_Commerce ,Arts}


// declaring enum 2

enum  Status {Enrolled, NotEnrolled , Graduated , Expelled  }


// student struct


struct Student {

string  name;
uint    age;
uint     registrationDate ;
Department Studentdepartment;
Status   Student_status;
uint    ObtainedMarks;


}


// mapping

mapping(uint256=> Student ) public Student_rollno;

    mapping(Department => uint256) public departmentCounts;
    mapping(Department => Student[]) public departmentStudents; 


// adding new student


function register( 
    uint256 rollNo,
    string memory _name,
    uint _age,
    Department _studentDepartment,
    Status _studentStatus,
    uint _obtainedMarks,
    uint _registrationDate) public  {

 Student_rollno[rollNo] = Student(_name, _age, _registrationDate, _studentDepartment, _studentStatus, _obtainedMarks);
 if (_studentStatus == Status.NotEnrolled || _studentStatus == Status.Expelled) {
        departmentCounts[_studentDepartment]++;




 }


}




// Update


function update(
uint256 Rollno ,
 string memory _name ,
  uint _age ,
  uint _obtainedmarks ,
 uint _registration_date ,
Status _studentstatus , 
 Department _studentdepartment) public  {
    
Student storage student  = Student_rollno[Rollno];

student.name =_name;
student.age =_age;
student.ObtainedMarks=_obtainedmarks;
student.registrationDate=_registration_date;
student.Student_status =_studentstatus;
student.Studentdepartment=_studentdepartment;



if (_studentstatus == Status.NotEnrolled || _studentstatus == Status.Expelled) {
        departmentCounts[student.Studentdepartment]--;

}

}

// retrieve 

function retrieve (uint256 Rollno) public view returns (Student memory) {
    
    return Student_rollno[Rollno];



}



// count of students

function  Student_count(Department _studentDepartment) public view returns (uint256) {
    
return departmentCounts[_studentDepartment]; 


}


// top 3 acheivers




function Topachieverblockchain() public view returns (Student[3] memory) {
    Student[3] memory topachievers;

Student[] storage blockchainStudents = departmentStudents[Department.Blockchain];

    
    // Initialize top achievers with default values
    for (uint256 i = 0; i < 3; i++) {
        topachievers[i] = Student("", 0, 0, Department.Blockchain, Status.NotEnrolled, 0);
    }

    // Find the top achievers among students in the Blockchain department
    for (uint256 i = 0; i < blockchainStudents.length; i++) {
        Student memory current_student = blockchainStudents[i];

        // Compare obtained marks with the current lowest achiever in topachievers
        for (uint256 j = 2; j > 0; j--) {
            if (current_student.ObtainedMarks > topachievers[j - 1].ObtainedMarks) {
                topachievers[j] = topachievers[j - 1];
                topachievers[j - 1] = current_student;
            } else {
                break;
            }
        }
    }

    return topachievers;
}














}






