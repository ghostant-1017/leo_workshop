PROGRAM_NAME=leo_workshop.aleo
RPIVATEKEY=APrivateKey1zkp8CZNn3yeCseEtxuVPbDCwSyhGW6yZKUYKfgXmcpoGPWH

snarkos developer execute \
--private-key $RPIVATEKEY \
--query http://127.0.0.1:3030  \
--priority-fee 100 $PROGRAM_NAME transfer '{
  owner: aleo1rhgdu77hgyqd3xjj8ucu3jj9r2krwz6mnzyd80gncr5fxcwlh5rsvzp9px.private,
  val: 100u32.private,
  _nonce: 3617789221646850895605678456540990650834169324134850999243619746335958371486group.public
}' aleo1rhgdu77hgyqd3xjj8ucu3jj9r2krwz6mnzyd80gncr5fxcwlh5rsvzp9px 50u32 \
--broadcast http://127.0.0.1:3030/testnet3/transaction/broadcast