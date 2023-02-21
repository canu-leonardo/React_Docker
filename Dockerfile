FROM alpine:latest
RUN apk update
RUN apk add npm
RUN npm create vite@latest my-react-app -- --template react
WORKDIR my-react-app
RUN npm install
ENTRYPOINT  npm run dev -- --host 0.0.0.0