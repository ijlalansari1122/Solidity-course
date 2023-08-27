// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Counter {
 uint public count =2;
 function square() external {
 count = count ** 2; }
}
interface ICounter {
 function count() external view returns (uint);
 function square() external;
}
contract MyContract {
 function squareCounter(address _counter) external {
 ICounter(_counter).square(); }
 function getCount(address _counter) external view returns (uint) {
 return ICounter(_counter).count(); }
}