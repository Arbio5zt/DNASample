set -e
set -x

rm /opt/gopath/src/DNA -rf
cd /opt/gopath/src;git clone https://github.com/luodanwg/DNA.git -b v0.6Pre
cd /opt/gopath/src/DNA;glide install
go build -o /opt/gopath/src/DNASample/DNA main.go
go build -o /opt/gopath/src/DNASample/nodectl nodectl.go
cd /opt/gopath/src/DNASample
rm /opt/gopath/src/DNASample/Chain -rf
