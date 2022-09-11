//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Struct{
    struct Car{
    string model;
    uint year;
    address owner;
    }

    Car public car;
    Car[] public cars;

    mapping (address => Car[]) public carsbyOwner;

    function example() external {
        Car memory kia = Car("kia09",2007,msg.sender);
        Car memory ford = Car({model:"truFord",owner:msg.sender,year:2012});
        Car memory toyota;
        toyota.model = "samurai12";
        toyota.owner = msg.sender;
        toyota.year = 2013;

        cars.push(kia);
        cars.push(ford);
        cars.push(toyota);

        Car storage _car = cars[2];
        _car.year = 2021;

        delete cars[0];
    }

}