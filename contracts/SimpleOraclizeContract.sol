// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

// import "github.com/oraclize/ethereum-api/oraclizeAPI_0.4.sol"; // rinkeby // remix
import "./oraclizeAPI.sol"; // rinkeby

contract SimpleOraclizeContract is usingOraclize {

    string public BTCUSDT;
    
    event LogConstructorInitiated(string nextStep);
    event LogPriceUpdated(string price);
    event LogNewOraclizeQuery(string description);

    constructor()public payable {
       emit LogConstructorInitiated("Constructor was initiated. Call 'updatePrice()' to send the Oraclize Query.");
    }

    // function __callback(bytes32 queryId, string result) {
    // Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function __callback(bytes32, string memory result) public {
        if (msg.sender != oraclize_cbAddress()) revert();
        BTCUSDT = result;
        emit LogPriceUpdated(result);
    }
    
    // 部屬合約 -> Oraclize -> API幣安 -> BTC幣值
    // 要求更新幣價(updatePrice) -> Oraclize 回傳(__callback)
    //要有足夠的手續費給oraclize
    function updatePrice()public payable {
        if (oraclize_getPrice("URL") > address(this).balance) {
            emit LogNewOraclizeQuery("Oraclize query was NOT sent, please add some ETH to cover for the query fee");
        } else {
            emit LogNewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
            oraclize_query("URL", "json(https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT).price");
        }
    }
}