// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract ChainlinkPriceFeeds {

  AggregatorV3Interface internal priceFeedETHUSD;
  AggregatorV3Interface internal priceFeedBTCUSD;


    /**
        Network: Goerli

        Aggregator: ETH/USD
        Address: 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        Decimal: 8

        Aggregator: BTC/USD
        Address: 0xA39434A63A52E749F02807ae27335515BA4b07F7
        Decimal: 8
    */

  constructor() {
    priceFeedETHUSD = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);  // ETH-USD
    priceFeedBTCUSD = AggregatorV3Interface(0xA39434A63A52E749F02807ae27335515BA4b07F7);  // BTC-USD
  }

  function getLatestPriceETHUSD() public view returns (int) {
    (,int price,,,) = priceFeedETHUSD.latestRoundData();
    return price;   // Sample : 157864086724
  }

  function getLatestPriceBTCUSD() public view returns (int) {
    (,int price,,,) = priceFeedBTCUSD.latestRoundData();
    return price;   // Sample : 2323300000000
  }
}

interface AggregatorV3Interface {
  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int answer,
      uint startedAt,
      uint updatedAt,
      uint80 answeredInRound
    );
}
