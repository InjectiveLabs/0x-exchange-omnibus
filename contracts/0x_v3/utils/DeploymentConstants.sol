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


contract DeploymentConstants {
    /// @dev Deployed address of the WETH contract.
    address constant private WETH_ADDRESS = 0xDFF540fE764855D3175DcfAe9d91AE8aEE5C6D6F;
    /// @dev Deployed address of the KyberNetworkProxy contract.
    address constant private KYBER_NETWORK_PROXY_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the `UniswapExchangeFactory` contract.
    address constant private UNISWAP_EXCHANGE_FACTORY_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the Eth2Dai `MatchingMarket` contract.
    address constant private ETH2DAI_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the `ERC20BridgeProxy` contract
    address constant private ERC20_BRIDGE_PROXY_ADDRESS = 0xc7124963Ab16C33E5bF421D4c0090116622B3074;
    ///@dev Deployed address of the `Dai` (multi-collateral) contract
    address constant private DAI_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the `Chai` contract
    address constant private CHAI_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the 0x DevUtils contract.
    address constant private DEV_UTILS_ADDRESS = 0xd7e3593d3d8A22480e2136EaB9497286D87C0231;
    /// @dev Kyber ETH pseudo-address.
    address constant internal KYBER_ETH_ADDRESS = 0x0000000000000000000000000000000000000000;
    /// @dev Deployed address of the dYdX contract.
    address constant private DYDX_ADDRESS = 0x0000000000000000000000000000000000000000;

    /// @dev Overridable way to get the `KyberNetworkProxy` address.
    /// @return kyberAddress The `IKyberNetworkProxy` address.
    function _getKyberNetworkProxyAddress()
        internal
        view
        returns (address kyberAddress)
    {
        return KYBER_NETWORK_PROXY_ADDRESS;
    }

    /// @dev Overridable way to get the WETH address.
    /// @return wethAddress The WETH address.
    function _getWethAddress()
        internal
        view
        returns (address wethAddress)
    {
        return WETH_ADDRESS;
    }

    /// @dev Overridable way to get the `UniswapExchangeFactory` address.
    /// @return uniswapAddress The `UniswapExchangeFactory` address.
    function _getUniswapExchangeFactoryAddress()
        internal
        view
        returns (address uniswapAddress)
    {
        return UNISWAP_EXCHANGE_FACTORY_ADDRESS;
    }

    /// @dev An overridable way to retrieve the Eth2Dai `MatchingMarket` contract.
    /// @return eth2daiAddress The Eth2Dai `MatchingMarket` contract.
    function _getEth2DaiAddress()
        internal
        view
        returns (address eth2daiAddress)
    {
        return ETH2DAI_ADDRESS;
    }

    /// @dev An overridable way to retrieve the `ERC20BridgeProxy` contract.
    /// @return erc20BridgeProxyAddress The `ERC20BridgeProxy` contract.
    function _getERC20BridgeProxyAddress()
        internal
        view
        returns (address erc20BridgeProxyAddress)
    {
        return ERC20_BRIDGE_PROXY_ADDRESS;
    }

    /// @dev An overridable way to retrieve the `Dai` contract.
    /// @return daiAddress The `Dai` contract.
    function _getDaiAddress()
        internal
        view
        returns (address daiAddress)
    {
        return DAI_ADDRESS;
    }

    /// @dev An overridable way to retrieve the `Chai` contract.
    /// @return chaiAddress The `Chai` contract.
    function _getChaiAddress()
        internal
        view
        returns (address chaiAddress)
    {
        return CHAI_ADDRESS;
    }

    /// @dev An overridable way to retrieve the 0x `DevUtils` contract address.
    /// @return devUtils The 0x `DevUtils` contract address.
    function _getDevUtilsAddress()
        internal
        view
        returns (address devUtils)
    {
        return DEV_UTILS_ADDRESS;
    }

    /// @dev Overridable way to get the DyDx contract.
    /// @return dydxAddress exchange The DyDx exchange contract.
    function _getDydxAddress()
        internal
        view
        returns (address dydxAddress)
    {
        return DYDX_ADDRESS;
    }
}
