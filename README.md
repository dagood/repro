```
$ docker build . -f testcases.Dockerfile
[...]
 > [6/6] RUN CGO_ENABLED=1 go test .:
11.15 Using libcrypto.so.3
11.15 OpenSSL version: OpenSSL 3.3.0 9 Apr 2024
11.15 FIPS enabled: false
11.15 [ERROR] error:41000066:SCOSSL::Algorithm not supported by SCOSSL:SCOSSL does not support hash algorithm for MAC 675 at /usr/src/azl/BUILD/SymCrypt-OpenSSL-1.4.3/ScosslCommon/src/scossl_mac.c, line 193
11.15 --- FAIL: TestHMAC (0.00s)
11.15     --- FAIL: TestHMAC/sha224 (0.00s)
11.15 panic: EVP_MAC_init failed
11.15 openssl error(s):
11.15 error:41000066:SCOSSL::Algorithm not supported by SCOSSL
11.15   /usr/src/azl/BUILD/SymCrypt-OpenSSL-1.4.3/ScosslCommon/src/scossl_mac.c:193
11.15 error:1C80007D:Provider routines::invalid mode
11.15   /usr/src/azl/BUILD/SymCrypt-OpenSSL-1.4.3/SymCryptProvider/src/mac/p_scossl_hmac.c:164 [recovered]
11.15   panic: EVP_MAC_init failed
11.15 openssl error(s):
11.15 error:41000066:SCOSSL::Algorithm not supported by SCOSSL
11.15   /usr/src/azl/BUILD/SymCrypt-OpenSSL-1.4.3/ScosslCommon/src/scossl_mac.c:193
11.15 error:1C80007D:Provider routines::invalid mode
11.15   /usr/src/azl/BUILD/SymCrypt-OpenSSL-1.4.3/SymCryptProvider/src/mac/p_scossl_hmac.c:164
11.15
11.15 goroutine 19 [running]:
11.15 testing.tRunner.func1.2({0x5b1560, 0xc00028e060})
11.15   /usr/lib/golang/src/testing/testing.go:1631 +0x24a
11.15 testing.tRunner.func1()
11.15   /usr/lib/golang/src/testing/testing.go:1634 +0x377
11.15 panic({0x5b1560?, 0xc00028e060?})
11.15   /usr/lib/golang/src/runtime/panic.go:770 +0x132
11.15 github.com/golang-fips/openssl/v2.newHMAC3({0xc00029a000, 0x40, 0x40}, {0x63a208, 0xc000294030}, 0x7f18280019a0)
11.15   /work/hmac.go:113 +0x345
11.15 github.com/golang-fips/openssl/v2.NewHMAC(0xc00009c1a0?, {0x0, 0x0, 0x0})
11.15   /work/hmac.go:45 +0xac
11.15 github.com/golang-fips/openssl/v2.TestHMAC.func1(0xc00009c1a0)
11.15   /work/hmac_test.go:24 +0x4a
11.15 testing.tRunner(0xc00009c1a0, 0xc000092040)
11.15   /usr/lib/golang/src/testing/testing.go:1689 +0xfb
11.15 created by testing.(*T).Run in goroutine 6
11.15   /usr/lib/golang/src/testing/testing.go:1742 +0x390
11.15 FAIL      github.com/golang-fips/openssl/v2       0.009s
11.15 FAIL
[...]
```

```
$ docker build . -f ecdsacases.Dockerfile
[...]
 > [6/6] RUN CGO_ENABLED=1 go test . -run ECDSA:
11.48 Using libcrypto.so.3
11.48 OpenSSL version: OpenSSL 3.3.0 9 Apr 2024
11.48 FIPS enabled: false
11.48 --- FAIL: TestECDSAKeyGeneration (0.00s)
11.48     --- FAIL: TestECDSAKeyGeneration/P256 (0.02s)
11.48         ecdsa_test.go:39: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSAKeyGeneration/P224 (0.02s)
11.48         ecdsa_test.go:39: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSAKeyGeneration/P384 (0.02s)
11.48         ecdsa_test.go:39: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSAKeyGeneration/P521 (0.02s)
11.48         ecdsa_test.go:39: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48 --- FAIL: TestECDSASignAndVerify (0.00s)
11.48     --- FAIL: TestECDSASignAndVerify/P256 (0.00s)
11.48         ecdsa_test.go:53: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSASignAndVerify/P224 (0.00s)
11.48         ecdsa_test.go:53: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSASignAndVerify/P384 (0.00s)
11.48         ecdsa_test.go:53: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48     --- FAIL: TestECDSASignAndVerify/P521 (0.00s)
11.48         ecdsa_test.go:53: EVP_PKEY_get_bn_param
11.48             openssl error(s):
11.48 FAIL
11.48 FAIL      github.com/golang-fips/openssl/v2       0.085s
11.48 FAIL
[...]
```
