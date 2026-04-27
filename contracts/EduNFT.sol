// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EduNFT is ERC721, Ownable {
    uint256 public nextTokenId;
    constructor() ERC721("EduPass", "EPASS") Ownable(msg.sender) {}

    function mintNFT(address to) public {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}