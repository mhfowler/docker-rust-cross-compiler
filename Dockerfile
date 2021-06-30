FROM rust:1.52-slim

VOLUME /build
WORKDIR /build
COPY . .

RUN apt-get update && apt-get install -y g++-arm-linux-gnueabihf gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf libc6-dev-armhf-cross

RUN rustup target add aarch64-unknown-linux-gnu
RUN rustup toolchain install nightly-x86_64-unknown-linux-gnu
RUN rustup toolchain install nightly-aarch64-unknown-linux-gnu
RUN apt-get install -y gcc-aarch64-linux-gnu build-essential
RUN cargo install cargo-deb

#RUN cargo install --path .

#CMD ["myapp"]