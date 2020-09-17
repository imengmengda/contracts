// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

interface ISwerveFi {
  function coins(int128) external view returns (address);
  function add_liquidity(uint256[4] calldata amounts, uint256 min_mint_amount) external;
  function remove_liquidity_imbalance(uint256[4] calldata amounts, uint256 max_burn_amount) external;
  function remove_liquidity(uint256 _amount, uint256[4] calldata amounts) external;
  function exchange(int128 from, int128 to, uint256 _from_amount, uint256 _min_to_amount) external;
  function calc_token_amount(uint256[4] calldata amounts, bool deposit) external view returns(uint);
  function calc_withdraw_one_coin(uint256 _token_amount, int128 i) external view returns (uint256);
  function remove_liquidity_one_coin(uint256 _token_amount, int128 i, uint256 min_amount) external;
}