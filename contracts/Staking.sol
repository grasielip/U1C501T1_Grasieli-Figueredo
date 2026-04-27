// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract Staking is ReentrancyGuard {
    IERC20 public token;
    mapping(address => uint256) public balances;

    constructor(address _token) {
        token = IERC20(_token);
    }

    // Função para depositar tokens (Stake)
    function stake(uint256 amount) external nonReentrant {
        require(amount > 0, "Quantidade deve ser maior que zero");
        token.transferFrom(msg.sender, address(this), amount);
        balances[msg.sender] += amount;
    }

    // Função para retirar tokens (Withdraw)
    function withdraw() external nonReentrant {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "Sem saldo para retirar");
        balances[msg.sender] = 0;
        token.transfer(msg.sender, amount);
    }
}