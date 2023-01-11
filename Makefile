setup:
	@docker build . -t hdwallet-socat

up:
	@docker run --rm -p 1234:1234 --name hdwallet-socat hdwallet-socat
