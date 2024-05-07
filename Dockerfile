ARG RESTACK_PRODUCT_VERSION=10.6.3

FROM index.docker.io/directus/directus:${RESTACK_PRODUCT_VERSION}

COPY --chown=node:node snapshot.yaml /directus/

RUN npx directus schema apply /directus/snapshot.yaml
