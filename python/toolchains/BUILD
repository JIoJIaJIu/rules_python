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

package(default_visibility = ["//visibility:public"])

load(":index.bzl", "py_toolchain")

py_toolchain(
	name = "dummy",
	local = True
)

py_toolchain(
	name = "python2",
	local = True
)

py_toolchain(
	name = "python3",
	local = True
)

py_toolchain(
	name = "py_local_2.7.15",
	version = "2.7.15",
	local = True
)

toolchain(
	name = "linux_py_toolchain",
	toolchain = ":python2",
	toolchain_type = "@io_bazel_rules_python//python:toolchain_type"
)

toolchain(
	name = "dummy_py_toolchain",
	toolchain = ":dummy",
	toolchain_type = "@io_bazel_rules_python//python:toolchain_type"
)

toolchain(
	name = "py_local_2.7.15_py_runtime_toolchain",
	exec_compatible_with = [
		"@bazel_tools//platforms:linux",
		"@bazel_tools//platforms:x86_64",
	],
	target_compatible_with = [
		"@bazel_tools//platforms:linux",
		"@bazel_tools//platforms:x86_64"
	],
	toolchain = ":py_local_2.7.15",
	toolchain_type = "@io_bazel_rules_python//python:runtime_toolchain_type"
)

toolchain(
	name = "dummy_py_runtime_toolchain",
	toolchain = ":dummy",
	toolchain_type = "@io_bazel_rules_python//python:runtime_toolchain_type"
)

