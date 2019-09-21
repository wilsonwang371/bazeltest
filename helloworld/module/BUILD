cc_library(
	name = "mymodule",
	srcs = ["src/mymodule.c"],
	hdrs = ["inc/mymodule.h"],

	includes = ["inc"], #if there is someone depending on me, this include will be
						#added to include path later while compiling
	defines = ["MODULE_ENABLED"], #for the printf in sub11.c
	visibility = ["//helloworld:__subpackages__"], #who can view me?
)

