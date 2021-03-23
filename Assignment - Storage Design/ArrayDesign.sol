pragma solidity 0.8.0;

contract ArrayStorage {
    
    struct Entity {
        uint data;
        address _address;
    }
    
    Entity[] entities;
    
    function addEntity(uint data) public returns (bool success) {
        Entity memory tempEntity;
        tempEntity.data = data;
        tempEntity._address = msg.sender;
        entities.push(tempEntity);
        return true;
    }
    
    function updateEntity(uint data) public returns (bool success) {
        for (uint i = 0; i < entities.length; i++) {
            if (entities[i]._address == msg.sender) {
                entities[i].data = data;
                return true;
            }
        }
        return false;
    }
    
    function getEntities() public view returns (Entity[] memory) {
        return entities;
    }
}