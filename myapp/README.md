[`go mod graph > graph.txt`](graph.txt)

[`go list -mod=readonly -m -json all > list-m-all.jsonl`](list-m-all.jsonl)

[`go list -mod=readonly -deps -f '{{.ImportPath}} ---- {{.Module}}' ./... > list-all-import-module.txt`](list-all-import-module.txt)

[`go list -mod=readonly -deps -f '{{if .Module}}{{.ImportPath}} ---- {{.Module}}{{end}}' ./... > list-all-import-has-module.txt`](list-all-import-has-module.txt)
