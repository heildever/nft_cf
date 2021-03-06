/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() {
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>')
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

 // var HDWalletProvider = require("truffle-hdwallet-provider");

 module.exports = {
   networks: {
     development: {
       host: "127.0.0.1",
       port: 8545,
       network_id: "*"
     }/*,
     ropsten: {
     provider: ropstenProvider,
     network_id: 3, // eslint-disable-line camelcase
    }*/
   }
 }
 /*networks: { development: { host: "127.0.0.1", port: 7545,
 network_id: "*" ,// Match any network id from: "0xda12****************" }
 "0xda12****************
 to modify smart contract account address*/
