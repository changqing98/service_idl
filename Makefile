service = userhub

echo:
	echo $(service)

proto_gen:
	protoc -I ./proto \
  --go_out ./proto_gen/${service} --go_opt=paths=source_relative \
  proto/$(service)/$(servic).proto
