
load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "tool_path")

def _clang_toolchain_config_impl(ctx):
    tool_paths = [
        tool_path(
            name = 'gcc',
            path = '/usr/bin/clang',
        ),
        tool_path(
            name = 'ar',
            path = '/usr/bin/llvm-ar',
        ),
        tool_path(
            name = 'cpp',
            path = '/usr/bin/clang++',
        ),
        tool_path(
            name = 'gcov',
            path = '/bin/false',
        ),
        tool_path(
            name = 'ld',
            path = '/usr/bin/lld',
        ),
        tool_path(
            name = 'nm',
            path = '/usr/bin/llvm-nm',
        ),
        tool_path(
            name = 'objdump',
            path = '/usr/bin/llvm-objdump',
        ),
        tool_path(
            name = 'strip',
            path = '/bin/false',
        ),
    ]
    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = 'test',
        host_system_name = 'test',
        target_system_name = 'test',
        target_cpu = 'k8',
        target_libc = 'test',
        compiler = 'test',
        abi_version = '',
        abi_libc_version = '',
        tool_paths = tool_paths,
        cxx_builtin_include_directories = [
            '/usr/lib/',
            '/usr/include',
        ],
    )

clang_toolchain_config = rule(
    implementation = _clang_toolchain_config_impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)


def _gcc_toolchain_config_impl(ctx):
    tool_paths = [
        tool_path(
            name = 'gcc',
            path = '/usr/bin/gcc',
        ),
        tool_path(
            name = 'ar',
            path = '/usr/bin/ar',
        ),
        tool_path(
            name = 'cpp',
            path = '/usr/bin/cpp',
        ),
        tool_path(
            name = 'gcov',
            path = '/bin/false',
        ),
        tool_path(
            name = 'ld',
            path = '/usr/bin/ld',
        ),
        tool_path(
            name = 'nm',
            path = '/usr/bin/nm',
        ),
        tool_path(
            name = 'objdump',
            path = '/usr/bin/objdump',
        ),
        tool_path(
            name = 'strip',
            path = '/usr/bin/strip',
        ),
    ]
    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = 'test',
        host_system_name = 'test',
        target_system_name = 'test',
        target_cpu = 'k8',
        target_libc = 'test',
        compiler = 'test',
        abi_version = '',
        abi_libc_version = '',
        tool_paths = tool_paths,
        cxx_builtin_include_directories = [
            '/usr/lib/',
            '/usr/include',
        ],
    )

gcc_toolchain_config = rule(
    implementation = _gcc_toolchain_config_impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
