# truffle-study

`$ truffle unbox webpack`

`$ truffle compile`
`$ truffle migrate`  //clear build/contracts

`cd app`
`npm run dev`

## 部署到太坊官方網絡

這裡以部署到以太坊測試網絡 Ropsten 為例進行介紹。
其實 MetaMask 後面的節點服務就是 Infura。

使用 Infura 提供的節點服務。
然後通過 `HDWalletProvider` 連接到 Infura 節點，並為我們簽署交易，通過下面命令安裝 HDWalletProvider：

`npm install truffle-hdwallet-provider`

在使用 Infura 之前，我們需要註冊一個訪問 Infura 服務的 Token， 
註冊地址為：https://infura.io/register， 註冊後創建一個 Project, 複製節點 url

`truffle migrate --network ropsten`

MetaMask / Ropsten / 測試水管 / 從水管取得 Ropsten 乙太幣。

## References

[oraclizeAPI.sol](https://github.com/provable-things/ethereum-api/blob/master/oraclizeAPI_0.5.sol)
[binance api](https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT)
[單元 39](https://hahow.in/courses/5b3cdd6ed03140001eebeadc) - Solidity 深入 - 智能合約與API呼叫(Oraclize)


