from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider

web3 = Web3(HTTPProvider('http://localhost:8545'))

# default account as first account created by truffle
web3.eth.default_account =  web3.eth.accounts[0]
default_account = web3.eth.default_account

print (web3.eth.getBalance(default_account))
