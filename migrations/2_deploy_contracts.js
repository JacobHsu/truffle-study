const SimpleOraclizeContract = artifacts.require("SimpleOraclizeContract");

module.exports = function(deployer) {
  deployer.deploy(SimpleOraclizeContract);
};

// const SafeMathLib = artifacts.require("SafeMathLib");
// const SafeMath = artifacts.require("SafeMath");

// module.exports = function(deployer) {
//   deployer.deploy(SafeMathLib);
//   deployer.link(SafeMathLib, SafeMath);
//   deployer.deploy(SafeMath);
// };
