// Events are the convenience interfaces with the EVM logging facilities

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleAuction {

event HighestBidIncreased(address bidder, uint amount); // Event


function bid() public payable {
// ...
emit HighestBidIncreased(msg.sender, msg.value); // Triggering event
}
}
