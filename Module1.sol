// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MysteriousEvent {
    
    uint256 public secretGuestCount;

    function secretAgeVerification(uint256 age) public  {

        // Require statement checks a mysterious condition

        require(age % 2 == 0, "Sorry, only those with an even age are allowed to access the secrets.");

        // Additional logic for the party criteria

        if (age < 21 && age % 3 != 0) {
            revert("You're welcome, but no entry to the exclusive lounge for you!");
        }

        // Increment guest count for successful verification

        secretGuestCount++;
    }

    function checkSecretGuestCount() public view {

        // Assert statement to ensure a cryptic internal condition

        assert(secretGuestCount % 5 == 0);

        // Additional logic if needed
    }
}
