def _impl(repository_ctx):
  repository_ctx.file("BUILD", "")
  repository_ctx.file("WORKSPACE", "")
  return
  repository_ctx.download({
    'url': 'https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tar.xz'
  })

py_toolchain = repository_rule(
  implementation = _impl,
  attrs = {
    'local': attr.bool(),
    'versions': attr.string_list(mandatory=True)
  }
)
