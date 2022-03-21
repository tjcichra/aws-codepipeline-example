FROM rust:1.31 AS build
WORKDIR /app
RUN cargo build --release

FROM alpine:3.14
#Copy the build's output binary from the previous build container
COPY --from=build /app/target/release/aws-codepipeline-example /app
ENTRYPOINT ["/app/aws-codepipeline-example"]
