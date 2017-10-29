FROM nixos/nix

# Fix SSL issues
RUN \
  apk --update upgrade && \
  apk add ca-certificates && \
  update-ca-certificates

RUN mkdir app
WORKDIR app

RUN nix-env --install elm

ADD elm-package.json .
RUN elm package install --yes

ADD Main.elm .

EXPOSE 8000
ENTRYPOINT ["elm"]
CMD ["reactor", "--address", "0.0.0.0"]
