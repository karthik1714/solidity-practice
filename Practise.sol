// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberArray {
    uint[] public numbers;

    // Function to add a number to the array
    function addNumber(uint _number) external payable {
        numbers.push(_number);
    }

    // Function to get the array of numbers
    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }

    // Function to calculate the sum of all numbers
    function sumNumbers() internal view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

     function getSum() public view returns (uint) {
        return sumNumbers();
    }
}
