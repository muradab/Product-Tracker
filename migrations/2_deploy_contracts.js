const ProductContract = artifacts.require("./ProductContract.sol");

module.exports = function(deployer) {
  deployer.deploy(ProductContract);
};
