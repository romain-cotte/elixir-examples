FROM bitwalker/alpine-elixir:1.5.2

ENV PORT=5000
ENV MIX_ENV=prod

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . /opt/app

RUN mix release

CMD _build/prod/rel/elixir_examples/bin/elixir_examples console
