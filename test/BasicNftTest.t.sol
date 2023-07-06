// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DepolyBasicNft} from "../script/DepolyBasicNft.s.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract BasicNftTest is Test {
    DepolyBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");

    // string public constant PUG  = "";

    function setUp() public {
        deployer = new DepolyBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Doggy";
        string memory actualName = basicNft.name();
        assert(
            keccak256(abi.encodePacked(expectedName)) ==
                keccak256(abi.encodePacked(actualName))
        );
    }

    // function testCanMintAndHaveABalance() public {
    //     vm.prank(USER);
    //     basicNft.mintNft(PUG);

    //     assert(basicNft.balancesOf(USER) == 1);

    // }
}
