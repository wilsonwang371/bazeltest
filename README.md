# Bazel Tutorial




## Hello, world

```bash
bazel build //helloworld:helloworld --verbose_failures --subcommands
```

## Custom Rule

```bash
bazel build //customrule:myadd.c --verbose_failures --subcommands
```

## Config Setting:

``` bash
bazel build //configsetting:foobar --config=foo --verbose_failures --subcommands

bazel build //configsetting:foobar --config=bar --verbose_failures --subcommands
```

## Custom Toolchain

```bash
bazel build //toolchainrule:test --compiler=gcc --verbose_failures --subcommands
```