
def _impl(ctx):
    print("My swig_c rule")
    return [DefaultInfo()]

swig_c = rule(
    implementation = _impl,
    attrs = {
        "src" : attr.label(
            mandatory = True,
            allow_single_file = True,
        ),
    }
)