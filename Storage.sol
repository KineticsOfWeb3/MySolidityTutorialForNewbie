// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedStorage {
    // Events for important contract state changes
    event FavoriteNumberChanged(address indexed user, uint256 newFavoriteNumber);

    // Struct to represent a person
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Storage
    uint256 private favoriteNumber;
    mapping(string => uint256) private nameToFavoriteNumber;
    Person[] private peopleList;

    // Modifiers for access control
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    // Owner address
    address private owner;

    // Constructor to set the owner
    constructor() {
        owner = msg.sender;
    }

    // Function to set the favorite number
    function setFavoriteNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        emit FavoriteNumberChanged(msg.sender, _favoriteNumber);
    }

    // Function to retrieve the favorite number
    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    // Function to add a person
    function addPerson(string memory _name, uint256 _favoriteNumber) public onlyOwner {
        peopleList.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // Function to get the number of people stored
    function getPeopleCount() public view returns (uint256) {
        return peopleList.length;
    }

    // Function to get the favorite number by name
    function getFavoriteNumberByName(string memory _name) public view returns (uint256) {
        return nameToFavoriteNumber[_name];
    }

    // Function to withdraw contract balance (security measure)
    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    // Fallback function to receive ether (for testing purposes)
    receive() external payable {}
}
