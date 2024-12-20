module example.org/myappcrypto

go 1.23.4

require example.org/somelibrary v1.0.0

require golang.org/x/crypto v0.23.0 // indirect

replace example.org/somelibrary => ../somelibrary
