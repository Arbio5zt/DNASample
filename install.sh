set -e
set -x

rm /opt/gopath/src/DNA -rf
cd /opt/gopath/src;git clone https://github.com/luodanwg/DNA.git -b V0.6pre
cd /opt/gopath/src/DNA;glide install
cp /opt/gopath/src/DNASample/main.go /opt/gopath/src/DNA -r
go build -o /opt/gopath/src/DNASample/DNA main.go
cd /opt/gopath/src/DNASample
rm /opt/gopath/src/DNASample/Chain -rf
rm /opt/gopath/src/DNASample/config.json
cp /opt/gopath/src/config/config.json /opt/gopath/src/DNASample/
