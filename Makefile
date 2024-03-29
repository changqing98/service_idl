.PHONY: proto_gen

service = userhub

proto_gen_target_dir = ./proto_gen/$(service)

echo:
	echo $(service) $(proto_gen_target_dir)

proto_gen:
	protoc -I ./proto --go_out=plugins=grpc:./proto_gen \
	 --go_opt=paths=source_relative \
	 ./proto/$(service)/*.proto
