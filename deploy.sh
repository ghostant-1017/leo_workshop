PROGRAM_NAME=leo_workshop.aleo
RPIVATEKEY=APrivateKey1zkp8CZNn3yeCseEtxuVPbDCwSyhGW6yZKUYKfgXmcpoGPWH

snarkos developer deploy --private-key $RPIVATEKEY \
--query http://127.0.0.1:3030  \
--priority-fee 100 $PROGRAM_NAME \
--broadcast http://127.0.0.1:3030/testnet3/transaction/broadcast \
--path ./build