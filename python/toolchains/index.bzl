# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("//python/toolchains/local:index.bzl", local_py_toolchain="py_toolchain")
#load("//python/toolchains/remote:index.bzl", remote_py_toolchain="py_toolchain")

def log(*args):
  print("[[toolchains/index.bzl]]", *args)

def _py_toolchain_impl(ctx):
  log('init', ctx.attr.name, ctx.attr.local, ctx.attr.version)
  #if not ctx.attr.local:
  #  fail "Fetching is not supported yet"

  toolchain_info = platform_common.ToolchainInfo()
  tmpl = platform_common.TemplateVariableInfo({})
  return [toolchain_info, tmpl]

py_toolchain = rule(
    implementation = _py_toolchain_impl,
    attrs = {
        'extra_str': attr.string(),
        'version': attr.string(),
        'local': attr.bool(mandatory=True)
    },
)

