FROM ubuntu:disco

RUN apt-get update && apt-get install -y \
        clang-format-8 \
        git \
        jq \
        wget

RUN ln -s $(which clang-format-8) /bin/clang-format

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
