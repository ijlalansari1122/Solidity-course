// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRegistration {
    
    enum Department { Artificial_Intelligence, Blockchain, E_Commerce, Arts }
    
    enum Status { Enrolled, NotEnrolled, Graduated, Expelled }
    
    struct Student {
        string name;
        uint age;
        uint registrationDate;
        Department studentDepartment;
        Status studentStatus;
        uint obtainedMarks;
    }
    
    mapping(uint256 => Student) public students;
    // mapping(Department => uint256) public departmentCounts;






function registerStudent(
    uint256 rollNo,
    string memory _name,
    uint _age,
    Department _studentDepartment,
    Status _studentStatus,
    uint _obtainedMarks,
    uint _registrationDate
) public {
    students[rollNo] = Student({
        name: _name,
        age: _age,
        registrationDate: _registrationDate,
        studentDepartment: _studentDepartment,
        studentStatus: _studentStatus,
        obtainedMarks: _obtainedMarks
    });
    
    if (_studentStatus != Status.NotEnrolled && _studentStatus != Status.Expelled) {
        departmentCounts[_studentDepartment]++;
    }
}















    }

    // function updateStudentDetails(
    //     uint256 rollNo,
    //     string memory _name,
    //     uint _age,
    //     Department _studentDepartment,
    //     Status _studentStatus,
    //     uint _obtainedMarks
    // ) public {
    //     Student storage student = students[rollNo];
    //     student.name = _name;
    //     student.age = _age;
    //     student.studentDepartment = _studentDepartment;
    //     student.studentStatus = _studentStatus;
    //     student.obtainedMarks = _obtainedMarks;
        
    //     if (_studentStatus == Status.NotEnrolled || _studentStatus == Status.Expelled) {
    //         departmentCounts[student.studentDepartment]--;
    //     }
    // }

    // function getStudentDetails(uint256 rollNo) public view returns (Student memory) {
    //     return students[rollNo];
    // }

    // function getStudentsInDepartment(Department _department) public view returns (uint256) {
    //     return departmentCounts[_department];
    // }

    // function getTopThreeBlockchainAchievers() public view returns (Student[3] memory) {
    //     Student[3] memory achievers;
    //     uint256 count = 0;

    //     for (uint256 rollNo = 1; rollNo <= students.length && count < 3; rollNo++) {
    //         if (students[rollNo].studentDepartment == Department.Blockchain) {
    //             achievers[count] = students[rollNo];
    //             count++;
    //         }
    //     }

    //     return achievers;
    // }
// }
