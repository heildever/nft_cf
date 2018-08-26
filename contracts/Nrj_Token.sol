pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract Nrj_Token is ERC721Token, Ownable {

    constructor(string _name, string _symbol) ERC721Token(_name, _symbol) public {
        _name = "Enerjee";
        _symbol_ = "NRJ";
    }

}
