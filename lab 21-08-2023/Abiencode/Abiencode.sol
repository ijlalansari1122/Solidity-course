// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;
contract  abiencode {
    
    function  encode(address _address , uint data) public  pure returns(bytes memory) {
    
    return (abi.encode(_address , data));
}


}




contract  AbiencodeSelector {




function encodeWithSelector(address _address, uint data)
 public pure returns(bytes memory result) {
 result =
abi.encodeWithSelector(bytes4(keccak256("encodeWithSelector(address, uint )")),_address, data);
 }
}

contract  encodepacked {
    function encodePacked(address _address, uint data) public pure
returns(bytes memory result) {
 result = abi.encodePacked(_address, data);
 }

}



contract  encodewithsignature {
    
function encodeWithSignature(address _address, uint data) public
pure returns(bytes memory result) {
 result = abi.encodeWithSignature(("encodeWithSelector(address, uint )"),_address, data);
 }


}