geth --networkid 5777 --datadir /tmp/gethdata \
  --dev \
  --ws --ws.addr 0.0.0.0 --ws.api personal,eth,net,web3 \
  --http --http.addr 0.0.0.0 --http.api personal,eth,net,web3 \
  --mine --miner.threads=1
