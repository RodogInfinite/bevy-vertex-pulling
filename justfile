
serve:
    cargo build --release --target wasm32-unknown-unknown --example quads-instanced
    wasm-bindgen --out-dir generated --web target/wasm32-unknown-unknown/release/examples/quads-instanced.wasm
    simple-http-server --port 3000 --nocache