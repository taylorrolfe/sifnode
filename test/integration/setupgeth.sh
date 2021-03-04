initial_addresses=$*

nohup geth --networkid 5777 --datadir /tmp/gethdata \
  --dev \
  --ws --ws.addr 0.0.0.0 --ws.api personal,eth,net,web3 \
  --http --http.addr 0.0.0.0 --http.api personal,eth,net,web3 \
  --mine --miner.threads=1 > /tmp/gethlog.txt 2>&1 &

while ! nc -z localhost 8545; do
  sleep 1
done

one_hundred_eth=100000000000000000000
for i in $initial_addresses
do
  geth attach /tmp/gethdata/geth.ipc --exec "eth.sendTransaction({from:eth.coinbase, to:\"$i\", value:$one_hundred_eth})"
  geth attach /tmp/gethdata/geth.ipc --exec "eth.getBalance(\"$i\")"
done