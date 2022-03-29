// SPDX-License-Identifier: MIT
pragma soldity ^0.8.10;

contract Array {
    // how you can intiliaze arrays
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // fixed arr all elements initialize to zero
    uin[10] public myFixedSizeArr;

    function get(uint i) public view returns(uint) {
        return arr[i];
    }

    // solidity can return entire but this should be avoided for dynamic arrays
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // modify an array to increase its length
        arr.push(i)
    }

    function pop() public {
        // remove last element of an array reducing its size by 1
        arr.pop();
    }

    function getLength() public view return (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // delete doesn't change length of array...rest value of index to default value = 0
        delete arr[index];
    }

    function examples() external {
        uint[] memory a = new uint[](5)
    }
}

// Array methods
contract RemoveArrayElementByShifting {
    // [1, 2, 3] remove(1) ---> [1, 3]
    uint[] public arr;

    function remove(uint _index) public {
        require(_index < arr.length, "index does exist");

        for(uint i = _index; i < arr.length - 1; i++) {
            arr[1] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2); // [1, 2, 4, 5]
        assert(arr[0] == 1); // identify array element by index
        assert(arr.length == 4)
        arr = [1];
        remove(0) // [] 
        assert(arr.length == 0);
    }
}

contract replaceArrElement {
    uint[] public arr;
    function remove(uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}