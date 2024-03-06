proto_gin_userhub:
	protoc -I ./proto \
    --go_out ./proto_http_gen_ginx/userhub --go_opt=paths=source_relative \
    --go-gin_out ./proto_http_gen_ginx/userhub --go-gin_opt=paths=source_relative \
    proto/userhub/userhub.proto
