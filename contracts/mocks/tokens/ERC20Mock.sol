// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    constructor() ERC20("ERC20Mock", "MOCK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint amount) external {
        _mint(to, amount);
    }
}