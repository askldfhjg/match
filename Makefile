
GOPATH:=$(shell go env GOPATH)
PROJECT_DIR:=$(shell pwd)
PUSH_PROJECT_NAME:=match_apis
.PHONY: proto
proto:
	export PROJECT_NAME=match_controller && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	protoc --proto_path=. --micro_out=. --go_out=:. proto/$$PROJECT_NAME.proto && \
	rm -rf $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	mkdir -p $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	cp -ar ${PROJECT_DIR}/$$PROJECT_NAME/proto "$(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME" && \
	echo "module github.com/askldfhjg/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto" > $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod && \
	echo "go 1.13" >> $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod

	export PROJECT_NAME=match_frontend && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	protoc --proto_path=. --micro_out=. --go_out=:. proto/$$PROJECT_NAME.proto && \
	rm -rf $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	mkdir -p $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	cp -ar ${PROJECT_DIR}/$$PROJECT_NAME/proto "$(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME" && \
	echo "module github.com/askldfhjg/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto" > $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod && \
	echo "go 1.13" >> $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod
	
	export PROJECT_NAME=match_process && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	protoc --proto_path=. --micro_out=. --go_out=:. proto/$$PROJECT_NAME.proto && \
	rm -rf $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	mkdir -p $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	cp -ar ${PROJECT_DIR}/$$PROJECT_NAME/proto "$(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME" && \
	echo "module github.com/askldfhjg/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto" > $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod && \
	echo "go 1.13" >> $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod

	export PROJECT_NAME=match_evaluator && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	protoc --proto_path=. --micro_out=. --go_out=:. proto/$$PROJECT_NAME.proto && \
	rm -rf $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	mkdir -p $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME && \
	cp -ar ${PROJECT_DIR}/$$PROJECT_NAME/proto "$(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME" && \
	echo "module github.com/askldfhjg/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto" > $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod && \
	echo "go 1.13" >> $(PROJECT_DIR)/${PUSH_PROJECT_NAME}/$$PROJECT_NAME/proto/go.mod
.PHONY: build
build:
	export PROJECT_NAME=match_controller && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	go build -o $$PROJECT_NAME *.go

	export PROJECT_NAME=match_frontend && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	go build -o $$PROJECT_NAME *.go

	export PROJECT_NAME=match_process && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	go build -o $$PROJECT_NAME *.go

	export PROJECT_NAME=match_evaluator && \
	cd $(PROJECT_DIR)/$$PROJECT_NAME && \
	go build -o $$PROJECT_NAME *.go