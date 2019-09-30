# bazeltest




## Hello, world

VERBOSE=1 bazel build //helloworld:helloworld --verbose_failures --subcommands

## Custom Rule

VERBOSE=1 bazel build //customrule:myadd.c --verbose_failures --subcommands

## Config Setting:

VERBOSE=1 bazel build //configsetting:foobar --config=foo --verbose_failures --subcommands
VERBOSE=1 bazel build //configsetting:foobar --config=bar --verbose_failures --subcommands