service = userhub

proto_gen_target_dir = ./proto_gen/$(service)

echo:
	echo $(service) $(proto_gen_target_dir)

proto_gen:
	mkdir -p ${proto_gen_target_dir}
	protoc -I ./proto \
  --go_out ./proto_gen --go_opt=paths=source_relative \
  proto/$(service)/$(service).proto
