ARG RESTACK_PRODUCT_VERSION=10.6.3

FROM index.docker.io/directus/directus:${RESTACK_PRODUCT_VERSION}

COPY --chown=node:node snapshot.yaml /directus/

COPY --chown=node:node  docker-entrypoint.sh /directus/docker-entrypoint.sh
RUN chmod +x /directus/docker-entrypoint.sh

ENTRYPOINT [ "/directus/docker-entrypoint.sh" ]


