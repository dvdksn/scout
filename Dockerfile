# syntax=docker/dockerfile:1

FROM alpine:3.16@sha256:4ff3ca91275773af45cb4b0834e12b7eb47d1c18f770a0b151381cd227f4c253
RUN apk add nodejs npm
WORKDIR /app
RUN --mount=type=bind,source=package-lock.json,target=package-lock.json \
    --mount=type=bind,source=package.json,target=package.json \
	npm ci
COPY index.js index.js
CMD npm start
