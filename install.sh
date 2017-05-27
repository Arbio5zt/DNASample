set -e
set -x

rm /opt/gopath/src/DNA -rf
cd /opt/gopath/src;git clone https://github.com/DNAProject/DNA.git
cd /opt/gopath/src/DNA;glide install
cp /opt/gopath/src/DNASample/main.go /opt/gopath/src/DNA
cp /opt/gopath/src/DNASample/sampleTransaction.go  /opt/gopath/src/DNA/net/httpjsonrpc
cp /opt/gopath/src/DNASample/interfaces.go /opt/gopath/src/DNA/net/httpjsonrpc
go build -o /opt/gopath/src/DNASample/DNA main.go
cd /opt/gopath/src/DNASample
rm /opt/gopath/src/DNASample/Chain -rf
