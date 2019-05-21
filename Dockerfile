FROM openproject/community:8.3

RUN mkdir ./entrypoint
COPY ./entrypoint/entrypoint.sh ./docker/entrypoint.sh

