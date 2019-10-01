#we need to define the toolchain here which specified in bazel.rc

#different cpu and compiler can have different toolchain assigned in toolchain suite
cc_toolchain_suite(
    name="clang",
    toolchains={
        '|clang': ':clang_toolchain', #we need to define this toolchain using cc_toolchain()
    }
)

cc_toolchain_suite(
    name='gcc',
    toolchains={
        '|gcc': ':gcc_toolchain', #we need to define this toolchain using cc_toolchain()
    }
)

filegroup(name = 'nofile')
load(':toolchain_config.bzl', 'cc_toolchain_config')

cc_toolchain(
    name='gcc_toolchain',
    toolchain_identifier='gcc-toolchain',
    toolchain_config=':gcc_toolchain_config',
    all_files=':nofile',
    strip_files=':nofile',
    objcopy_files=':nofile',
    dwp_files=':nofile',
    compiler_files=':nofile',
    linker_files=':nofile',
)

cc_toolchain(
    name='clang_toolchain',
    toolchain_identifier='clang-toolchain',
    toolchain_config=':clang_toolchain_config',
    all_files=':nofile',
    strip_files=':nofile',
    objcopy_files=':nofile',
    dwp_files=':nofile',
    compiler_files=':nofile',
    linker_files=':nofile',
)

cc_toolchain_config(
    name='clang_toolchain_config',
)

cc_toolchain_config(
    name='gcc_toolchain_config',
)