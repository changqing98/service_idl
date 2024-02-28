.PHONY: idl_gen

userhub:
	make proto_gen app=userhub

base:
	make proto_gen app=base

proto_gen:
	protoc --proto_path=proto --go_out=./proto_gen --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative --go-grpc_out=./proto_gen proto/base/**




