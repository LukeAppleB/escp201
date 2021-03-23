pragma solidity 0.8.0;

contract MappingStorage {
   
    struct Entity {
        uint data;
        address _address;
    }
    
    mapping(address => Entity) entities;
    
    function addEntity(uint data) public returns (bool success) {
        entities[msg.sender].data = data;
        entities[msg.sender]._address = msg.sender;
        return true;
    }
    
    function updateEntity(uint data) public returns (bool success) {
        entities[msg.sender].data = data;
        return true;
    }
    
    function getEntityData() public view returns (uint data) {
        return entities[msg.sender].data;
    }
}