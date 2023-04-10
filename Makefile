protos: # execute from marketplace-api directory
	protoc --dart_out=grpc:lib/services -I lib/protos lib/protos/item.proto