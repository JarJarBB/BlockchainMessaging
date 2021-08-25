
pragma solidity >=0.7.0 <0.9.0;

contract Storage {

    struct Message {
        uint timestamp;
        string message;
    }

    mapping (uint => Message) messages;

    function store(uint hash, string memory message) public {
        if (messages[hash].timestamp == 0) {
             messages[hash] = Message(block.timestamp, message);
        }
    }

    function retrieve(uint hash) public view returns (uint, string memory) {
        return (messages[hash].timestamp, messages[hash].message);
    }
}
