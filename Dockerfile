FROM elixir:1.6

WORKDIR /app

COPY . . 

RUN apt-get update && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.clean --all && \
    mix deps.get

#    mix deps.update --force --all &&\

EXPOSE 4000

CMD ["mix", "phoenix.server"]
