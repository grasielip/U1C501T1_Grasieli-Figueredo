// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IToken { function balanceOf(address a) external view returns (uint256); }

contract GovernanceDAO {
    IToken public token;
    struct Proposal { string desc; uint256 votes; bool executed; }
    Proposal[] public proposals;

    constructor(address _token) { token = IToken(_token); }

    function createProposal(string memory d) external {
        proposals.push(Proposal(d, 0, false));
    }

    function vote(uint256 id) external {
        uint256 power = token.balanceOf(msg.sender);
        require(power > 0, "No power");
        proposals[id].votes += power;
    }
}