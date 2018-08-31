pragma solidity ^0.4.24;
//consider locking pragma

import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "../node_modules/openzeppelin-solidity/contracts/math/SafeMath.sol";


contract Nrj_Token is ERC721Token, Ownable {

    uint public cap; // a hard cap to be raised
    uint256 public multipleOf; // a multiple-s of ether to be accepted
    mapping (address => uint) public purchasers;

    modifier capNotReached(){
        require (cap > ethRaised);
        _;
    }
    modifier isMultiple(){
        require (msg.value % multipleOf == 0);
        _;
    }
    /**
     * @dev Constructor, takes maximum amount of wei accepted in the crowdsale.
     * @param _name Name of the token
     * @param _symbol Symbol of the token
     * @param _cap Max amount of wei to be contributed
     */
    constructor(string _name, string _symbol, uint _cap, uint _multipleOf)
    ERC721Token(_name, _symbol) public {
        require(_cap > 0);
        cap = _cap;
        multipleOf = _multipleOf ** 18;
    }

    /*
    function payable isMultiple capNotReached{
    }*/

    // fallback function
    function() payable public {
    }
}
