.PHONY: idl_gen

userhub:
	make proto_gen app=userhub

proto_gen:
	 protoc --go_out=./proto_gen --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative --go-grpc_out=./proto_gen proto/${app}/**



