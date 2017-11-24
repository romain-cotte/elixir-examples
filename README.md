# Elixir-examples

## Installation

To install dependency, simply run:

```
mix deps.get
```

To run the project you have to have kafka running on your environment. In the
`config.exs`, specify the brokers and the consumer group.


## Create a new topic mails

On local:
```
kafka-topics --zookeeper 127.0.0.1:2181 \
  --topic mails \
  --partitions 1 --replication-factor 1 \
  --create --config retention.ms=60000 \
  --config retention.bytes=52428800
```

## Start the application

```
mix run --no-halt
```

## Launch the tests

```
mix test
```


## Create a release

```
mix release
```

## Start the release

```
./rel/elixir_examples/bin/elixir_examples console
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).
