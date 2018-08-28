var Nrj_Token = artifacts.require("Nrj_Token");

module.exports = function(deployer) {
  var name = 'Enerjee';
  var symbol = 'RNJ';
  deployer.deploy(Nrj_Token, name, symbol);
};
