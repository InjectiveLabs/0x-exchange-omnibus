pragma solidity ^0.6.0;

import "../../utils/interfaces/IOwnable.sol";


contract Ownable is
    IOwnable
{
    address public owner;

    constructor ()
        public
    {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "ONLY_CONTRACT_OWNER"
        );
        _;
    }

    function transferOwnership(address newOwner)
        override
        public
        onlyOwner
    {
        if (newOwner != address(0)) {
            owner = newOwner;
        }
    }
}
