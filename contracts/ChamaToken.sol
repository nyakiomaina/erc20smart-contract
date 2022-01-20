pragma solidity ^0.7.3;

import '@openzeppelin/contracts/tokens/ERC20/ERC20.sol';

contract ChamaToken is ERC20, ERC20Detailed {
    address public admin;
    constructor() ERC20('ChamaToken', 'CTN') {
        _mint(msg.sender,1000 * 10 ** 18);
        admin == msg.sender;
        
    }

    function mint (address to, uint amount) {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }


}