# [Chainlink Data Feeds](https://docs.chain.link/data-feeds)
Chainlink Data Feeds are the quickest way to connect your smart contracts to the real-world market prices of assets. For example, one use for data feeds is to enable smart contracts to retrieve the latest pricing data of an asset in a single call.

# Types of data feeds

 1.**Price Feeds**
 
 2.**Proof of Reserve Feeds**
 
 3.**L2 sequencer uptime feeds**
 
 
# Price Feeds
[Using Price Feeds](https://docs.chain.link/data-feeds/price-feeds)

[Data Feeds Contract Addresses](https://docs.chain.link/data-feeds/price-feeds/addresses/)
  
# Getting a different price denomination
 Chainlink Data Feeds can be used in combination to derive denominated **price pairs** in other currencies.
 If you require a denomination other than what is provided, you can use two **data feeds** to derive the pair that you need. For example, if you needed a **BTC/EUR** price, cu ould take the **BTC/USD** feed and the **EUR/USD** feed and derive **BTC/EUR** using division.
 
 (BTC/USD) / (EUR/USD) = BTC/EUR
