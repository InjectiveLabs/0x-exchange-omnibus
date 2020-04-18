/*

  Copyright 2019 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "../../erc20/interfaces/IEtherToken.sol";
import "../interfaces/IZrxVault.sol";
import "../interfaces/IStaking.sol";


// solhint-disable separate-by-one-line-in-contract
abstract contract MixinDeploymentConstants is IStaking {

    // @TODO SET THESE VALUES FOR DEPLOYMENT

    // Deployed WETH9 Address
    address constant private WETH_ADDRESS = address(0xDFF540fE764855D3175DcfAe9d91AE8aEE5C6D6F);

    // @TODO SET THESE VALUES FOR DEPLOYMENT

    // Deployed ZrxVault address
    address constant private ZRX_VAULT_ADDRESS = address(0xda54ecF5A234D6CD85Ce93A955860834aCA75878);

    /// @dev An overridable way to access the deployed WETH contract.
    ///      Must be view to allow overrides to access state.
    /// @return wethContract The WETH contract instance.
    function getWethContract()
        override
        public
        view
        returns (IEtherToken wethContract)
    {
        wethContract = IEtherToken(WETH_ADDRESS);
        return wethContract;
    }

    /// @dev An overridable way to access the deployed zrxVault.
    ///      Must be view to allow overrides to access state.
    /// @return zrxVault The zrxVault contract.
    function getZrxVault()
        override
        public
        view
        returns (IZrxVault zrxVault)
    {
        zrxVault = IZrxVault(ZRX_VAULT_ADDRESS);
        return zrxVault;
    }
}
