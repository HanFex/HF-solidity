// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/token/ERC20/ERC20.sol";

contract TokenERC20 is ERC20 {
    uint8 private immutable _decimals;
    constructor(string memory name, string memory symbol, uint256 initialSupply, uint8 decimals_) ERC20(name, symbol) {
        _decimals = decimals_;
        _mint(msg.sender, initialSupply * 10 ** _decimals);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
}