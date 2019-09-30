config_setting(
    name = 'foo',
    values = {
        'platform_suffix': '-foo',
    }
)

config_setting(
    name = 'bar',
    values = {
        'platform_suffix': '-bar',
    }
)

# https://docs.bazel.build/versions/master/be/c-cpp.html#cc_binary
cc_binary(
    name = "foobar",
    srcs = select({
        ':foo': ['src/foo.c'],
        ':bar': ['src/bar.c'],
    }),
    copts = [],
)