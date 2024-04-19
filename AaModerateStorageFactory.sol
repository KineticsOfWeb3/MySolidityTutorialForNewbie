// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Storage.sol";

contract ModerateStorageFactory {
    // Array to store deployed ModerateStorage contracts
    ModerateStorage[] public ModerateStorageArray;

    // Event emitted when a new ModerateStorage contract is created
    event ModerateStorageCreated(address indexed creator, address indexed contractAddress);

    // Function to create a new ModerateStorage contract and add it to the array
    function createModerateStorageContract() public {
        ModerateStorage moderateStorage = new ModerateStorage();
        moderateStorageArray.push(moderateStorage);
        
        // Emit event to log the creation of a new ModerateStorage contract
        emit ModerateStorageCreated(msg.sender, address(moderateStorage));
    }

    // Function to set the favorite number in a specific ModerateStorage contract
    function sfSetFavoriteNumber(uint256 _storageIndex, uint256 _favoriteNumber) public {
        // Check if the provided index is within bounds
        require(_storageIndex < moderateStorageArray.length, "Index out of bounds");
        
        // Call the setFavoriteNumber function of the specified ModerateStorage contract
        moderateStorageArray[_storageIndex].setFavoriteNumber(_favoriteNumber);
    }

    // Function to retrieve the favorite number from a specific ModerateStorage contract
    function sfGetFavoriteNumber(uint256 _storageIndex) public view returns (uint256) {
        // Check if the provided index is within bounds
        require(_storageIndex < moderateStorageArray.length, "Index out of bounds");
        
        // Call the getFavoriteNumber function of the specified ModerateStorage contract
        return moderateStorageArray[_storageIndex].getFavoriteNumber();
    }

    // Function to add a person to a specific ModerateStorage contract
    function sfAddPerson(uint256 _storageIndex, string memory _name, uint256 _favoriteNumber) public {
        // Check if the provided index is within bounds
        require(_storageIndex < moderateStorageArray.length, "Index out of bounds");
        
        // Call the addPerson function of the specified ModerateStorage contract
        moderateStorageArray[_storageIndex].addPerson(_name, _favoriteNumber);
    }

    // Function to retrieve the favorite number of a person by name from a specific ModerateStorage contract
    function sfGetFavoriteNumberByName(uint256 _storageIndex, string memory _name) public view returns (uint256) {
        // Check if the provided index is within bounds
        require(_storageIndex < moderateStorageArray.length, "Index out of bounds");
        
        // Call the getFavoriteNumberByName function of the specified ModerateStorage contract
        return moderateStorageArray[_storageIndex].getFavoriteNumberByName(_name);
    }

    // Function to get the number of people stored in a specific ModerateStorage contract
    function sfGetPeopleCount(uint256 _storageIndex) public view returns (uint256) {
        // Check if the provided index is within bounds
        require(_storageIndex < moderatestorageArray.length, "Index out of bounds");
        
        // Call the getPeopleCount function of the specified ModerateStorage contract
        return moderateStorageArray[_storageIndex].getPeopleCount();
    }
}
