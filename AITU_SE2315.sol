// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract AITU_SE2315 is ERC20, ERC20Permit {
    address public contractOwner;

    constructor(address _owner) ERC20("AITU_SE2315", "AITK") ERC20Permit("AITU_SE2315") payable {
        contractOwner = _owner;
        _mint(_owner, 2000 * 10 ** decimals());
    }
}
