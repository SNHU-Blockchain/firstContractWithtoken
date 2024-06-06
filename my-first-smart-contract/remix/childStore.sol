// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract chidStore{
    struct Child{
        string name;
        uint age;
    }

    Child[] public  children;

    function createChildren() public {
        Child memory child = Child({
            name: "Olvic",
            age: 31 
        });
        children.push(child);
    }

    function changeChildInmemory(uint newAge) public view{
        Child memory child = children[0];
        child.age = newAge;
    }

    function changeChildInstorage(uint newAge) public {
        Child storage child = children[0];
        child.age = newAge;
    } 

    function changeChildCalldata(string calldata newName) public {
        Child storage child = children[0];
        child.name = newName;  
    }
}