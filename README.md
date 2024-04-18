 Storage Smart Contract

This is a Solidity smart contract named Storage designed to store favorite numbers and information about people. The contract includes features such as access control, events, and additional functions to enhance its usability and security.

## Features

1. **Favorite Number Storage**: Users can set and retrieve their favorite numbers.

2. **Person Storage**: Users can add people along with their favorite numbers and retrieve the stored information.

3. **Access Control**: Certain functions are restricted to be callable only by the contract owner for enhanced security.

4. **Events**: An event is emitted whenever the favorite number is changed, providing transparency and tracking of state changes.

5. **Withdrawal Function**: The contract owner can withdraw any accumulated ether balance for security purposes.

## Usage

1. **Setting Favorite Number**: Call the `setFavoriteNumber(uint256 _favoriteNumber)` function to set your favorite number.

2. **Retrieving Favorite Number**: Call the `getFavoriteNumber()` function to retrieve your favorite number.

3. **Adding a Person**: Call the `addPerson(string memory _name, uint256 _favoriteNumber)` function to add a person along with their favorite number.

4. **Retrieving Person Information**: Use functions like `getPeopleCount()` to get the number of people stored, and `getFavoriteNumberByName(string memory _name)` to retrieve the favorite number of a person by their name.

5. **Access Control**: Some functions are restricted to the contract owner. Only the owner can call functions marked with the `onlyOwner` modifier.

6. **Events**: Listen for the `FavoriteNumberChanged` event to track changes in favorite numbers.

7. **Withdrawal**: The contract owner can use the `withdraw()` function to withdraw any accumulated ether balance from the contract.

## Deployment

Deploy the contract on a compatible Ethereum network (e.g., Rinkeby, Ropsten, or a local development environment) using tools like Remix, Truffle, or Hardhat.

## Testing

You can test the contract functionality using tools like Remix IDE, Truffle, or write automated tests using frameworks like Truffle or Hardhat.


