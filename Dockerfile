# syntax=docker/dockerfile:1

FROM alpine:3.14@sha256:be9bdc0ef8e96dbc428dc189b31e2e3b05523d96d12ed627c37aa2936653258c
RUN apk add nodejs npm
WORKDIR /app
RUN --mount=type=bind,source=package-lock.json,target=package-lock.json \
    --mount=type=bind,source=package.json,target=package.json \
	npm ci
COPY index.js index.js
CMD npm start
