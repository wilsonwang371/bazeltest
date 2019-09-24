
def _impl(ctx):
    file = ctx.actions.declare_file(ctx.label.name) #when you declared a file, it needs to be 
                                                    #generated from some where, in our case
                                                    # it is the run_shell
    cmd = 'swig -Wall -o {1} -python {0}'.format(ctx.file.src.path,
                                                 file.path)
    ctx.actions.run_shell(command=cmd,
                        inputs=[ctx.file.src], #used to calculate dependencies
                        outputs=[file],
                        use_default_shell_env=True)
    return [DefaultInfo(files=depset([file]))]

swig_c = rule(
    implementation = _impl,
    attrs = {
        "src" : attr.label(
            mandatory = True,
            allow_single_file = True,
        ),
    }
)