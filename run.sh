#!/usr/bin/env bash
docker run -v /Users/notplants/computer/projects/peachcloud/hello:/build -it rust-builder cargo build --release --target=aarch64-unknown-linux-gnu