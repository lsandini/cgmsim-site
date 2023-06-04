FROM python:3.11.3-alpine

RUN apk --no-cache add lftp ca-certificates openssh && \
    pip install mkdocs mkdocs-material mkdocs-bootswatch

RUN mkdir /workspace
WORKDIR /workspace

COPY mkdocs.yml ./mkdocs.yml
COPY docs ./docs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]