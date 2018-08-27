pragma solidity ^0.4.24;
//consider locking pragma

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract Nrj_Token is ERC721Token, Ownable {
    string public name = "Enerjee";
    string public symbol = "NRJ";

    constructor(string _name, string _symbol) ERC721Token(_name, _symbol) public {
        name = _name;
        symbol = _symbol;
    }

    function receiveEther(uint256 amount) payable public {
        require(msg.value == amount);
    }

}
/* cap should be defined to limit received erc20s
then limit will be divided into # sender address
*/
