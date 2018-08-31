var Nrj_Token = artifacts.require("Nrj_Token");

module.exports = function(deployer) {
  var name = 'Enerjee';
  var symbol = 'NRJ';
  /* define amount of wei to be raised
  var amount = 3 ** 18
  and deploy at the line below*/
  deployer.deploy(Nrj_Token, name, symbol);
};
