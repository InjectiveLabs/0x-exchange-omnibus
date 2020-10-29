#!/bin/sh

truffle build

# dev_utils.go generation
cat build/contracts/DevUtils.json | jq .abi > DevUtils.abi
abigen --abi DevUtils.abi --pkg XXX > dev_utils.go
rm -f DevUtils.abi

perl -i.tmp -pe 's/package XXX/package wrappers/' dev_utils.go
perl -i.tmp -pe 's/XXXDevUtils/DevUtils/g' dev_utils.go
perl -i.tmp -pe 's/_XXX/f/g' dev_utils.go
perl -i.tmp -pe 's/XXX/DevUtils/g' dev_utils.go
perl -i.tmp -pe 'BEGIN {undef $/;} s/\/\/ LibOrderOrder[^\}]*\}//smg' dev_utils.go
perl -i.tmp -pe 's/LibOrderOrderInfo/OrderInfo/g' dev_utils.go
perl -i.tmp -pe 's/LibZeroExTransactionZeroExTransaction/ZeroExTransaction/g' dev_utils.go
perl -i.tmp -pe 's/LibOrderOrder/Order/g' dev_utils.go
rm -f dev_utils.go.tmp
gofmt -w dev_utils.go 

# exchange.go generation
cat build/contracts/Exchange.json | jq .abi > Exchange.abi
abigen --abi Exchange.abi --pkg XXX > exchange.go
rm -f Exchange.abi

perl -i.tmp -pe 's/package XXX/package wrappers/' exchange.go
perl -i.tmp -pe 's/XXXExchange/Exchange/g' exchange.go
perl -i.tmp -pe 's/_XXX/f/g' exchange.go
perl -i.tmp -pe 's/XXX/Exchange/g' exchange.go
perl -i.tmp -pe 'BEGIN {undef $/;} s/\/\/ LibOrderOrder[^\}]*\}//smg' exchange.go
perl -i.tmp -pe 's/LibOrderOrderInfo/OrderInfo/g' exchange.go
perl -i.tmp -pe 's/LibZeroExTransactionZeroExTransaction/ZeroExTransaction/g' exchange.go
perl -i.tmp -pe 's/LibOrderOrder/Order/g' exchange.go
rm -f exchange.go.tmp
gofmt -w exchange.go 

# erc20.go generation
cat build/contracts/ERC20Token.json | jq .abi > ERC20Token.abi
abigen --abi ERC20Token.abi --pkg XXX > erc20.go
rm -f ERC20Token.abi

perl -i.tmp -pe 's/package XXX/package wrappers/' erc20.go
perl -i.tmp -pe 's/XXXERC20/ERC20/g' erc20.go
perl -i.tmp -pe 's/_XXX/f/g' erc20.go
perl -i.tmp -pe 's/XXX/ERC20/g' erc20.go
rm -f erc20.go.tmp
gofmt -w erc20.go 

# weth9.go generation
cat build/contracts/WETH9.json | jq .abi > WETH9.abi
abigen --abi WETH9.abi --pkg XXX > weth9.go
rm -f WETH9.abi

perl -i.tmp -pe 's/package XXX/package wrappers/' weth9.go
perl -i.tmp -pe 's/XXXWETH9/WETH9/g' weth9.go
perl -i.tmp -pe 's/_XXX/f/g' weth9.go
perl -i.tmp -pe 's/XXX/WETH9/g' weth9.go
rm -f weth9.go.tmp
gofmt -w weth9.go 

echo "All done! Move dev_utils.go, exchange.go, erc20.go, weth9.go into zeroex-go/wrappers/ now.\nmv dev_utils.go exchange.go erc20.go weth9.go ../zeroex-go/wrappers"
