from web3 import Web3, HTTPProvider, IPCProvider, WebsocketProvider
from solc import compile_source

web3 = Web3(HTTPProvider('http://localhost:8545'))

def getBalanceinEth(_no):
    return web3.fromWei(web3.eth.getBalance(_no), "ether")

# contract account has the 0th address by default
contract_account = web3.eth.accounts[0]
# set default account to 1th address
web3.eth.default_account =  web3.eth.accounts[1]
default_account = web3.eth.default_account

transaction = {'from': default_account, "to":contract_account, "value":
            Web3.toWei(1, 'ether')}

web3.eth.sendTransaction(transaction)
print (getBalanceinEth(default_account), getBalanceinEth(receiver_account))
