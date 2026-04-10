// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MimosoCompute is ERC20, Ownable {
    constructor() ERC20("Mimoso Compute Engine", "MCE") Ownable(msg.sender) {
        // Acuñación inicial para el Magnate Juan Martínez Lara
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Protocolo de Ayuda: Dar sin esperar nada a cambio
    function ejecutarDistribucion(address hacia, uint256 cantidad) public onlyOwner {
        _transfer(owner(), hacia, cantidad);
    }
}

# cuddly-computing-machine 
