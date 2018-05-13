FROM google/cloud-sdk:alpine
ARG default-gcp-project

# Install node.js, yarn, setup right default project
RUN apk update                                       && \
    apk --no-cache add yarn nodejs vim               && \
    gcloud config set project ${default-gcp-project} && \
    yarn global add @google-cloud/functions-emulator
