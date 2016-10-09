FROM buildkite/agent:alpine-docker-1.11.1

RUN apk --no-cache add bash gawk sed grep bc coreutils jq \
	groff less python py-pip

RUN \
	mkdir -p /aws && \
	pip install awscli && \
	apk --purge -v del py-pip
