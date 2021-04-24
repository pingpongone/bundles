.PHONY: hash help

help:
	@echo "Usage: make hash"

hash:
	@read -p "Enter file path: " fn; \
	openssl dgst -sha512 -binary $$fn | openssl base64 -A
