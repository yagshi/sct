FROM haskell:9.8.4
WORKDIR /app
COPY stack.yaml stack.yaml
COPY package.yaml package.yaml
RUN stack setup

COPY . .
RUN stack build

CMD ["stack", "run"]