// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Storage.sol";

contract AdditionalStorage is Storage {
    // Override the store function from the Storage contract
    function store(uint256 _favoriteNumber) public override {
        // Call the store function from the parent AdvancedStorage contract
        super.store(_favoriteNumber);
      
    }
}

// Inheritance: The AdditionalStorage contract inherits from the Storage contract using the is keyword. 
This allows AdditionalStorage to access all the functions and state variables defined in Storage.

// Override: The store function in AdditionalStorage overrides the implementation of the store function inherited from Storage. 
This allows you to customize the behavior of the store function in
the ExtraStorage contract while still retaining access to the parent function's logic.

// super: Inside the overridden store function, the super keyword is used to call the store function from the parent Storage contract.
This ensures that the original functionality defined in Storage is preserved,
and any additional logic added in the AdditionalStorage contract is executed alongside it.

// Virtual: To declare a function as virtual, you use the virtual keyword in the function declaration.
So store function in the parent contract(Storage) will have the Keyword VIRTUAL
