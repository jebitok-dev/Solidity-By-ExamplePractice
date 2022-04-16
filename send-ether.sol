// SPDX-License-Identifier

pragma solidity ^0.8.10;

contract ReceiveEther {
     /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */
    // receive Ether when msg.data is empty
    receive() external payable {}
    // fallback called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // no longer recommended
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // returns bool to indicate sucess or failure 
        // not recommended for sending ether
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether!")
    }

    function sendViaCall(address payable _to) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether")
    }
}