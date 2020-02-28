export GO111MODULE=on
sudo go mod init github.com/me/example
sudo go build

rm -rf /tmp/example
TMHOME="/tmp/example" tendermint init
rm example.sock || echo "no example.sock, hence not deleted"
./example

