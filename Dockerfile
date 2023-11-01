# syntax=docker/dockerfile:1

FROM alpine:3.18
RUN apk add nodejs npm
WORKDIR /app
RUN --mount=type=bind,source=package-lock.json,target=package-lock.json \
    --mount=type=bind,source=package.json,target=package.json \
	npm ci
COPY index.js index.js
CMD npm start
