// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;




contract External{
// string external  externalmsg = "External Variable is Called";
function getexternal() external pure returns(string memory){
return "External Function";
}
// function getexternalfunc() public view returns(string memory){
// return getexternal();
// }
}


contract External2 is External  {
    
// function getexternalfunc() public view returns(string memory){
// return getexternal();
// }




}