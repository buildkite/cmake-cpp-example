# Buildkite C++ CMake Example

[![Build status](https://badge.buildkite.com/f9b46d96710d254e34229ba68bb8797d0b8f1e64ac5abfecb9.svg?branch=main)](https://buildkite.com/buildkite/cmake-cpp-example/builds/latest?branch=main)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository demonstrates a [Buildkite](https://buildkite.com/) pipeline that builds and tests a simple C++ project using [CMake](https://cmake.org/).

👉 **See this example in action:** [buildkite/cmake-cpp-example](https://buildkite.com/buildkite/cmake-cpp-example/builds/latest?branch=main)

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get this running, or try it yourself:

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/cmake-cpp-example/builds/latest?branch=main">
  <img width="2400" alt="Screenshot of example pipeline build page" src=".buildkite/screenshot.png" />
</a>

<!-- docs:start -->

## How it works

This example:
- Builds a simple C++ app using `CMakeLists.txt` and a basic `main.cpp` file
- Defines a test in `test/test_hello.cpp`, run using [CTest](https://cmake.org/cmake/help/latest/manual/ctest.1.html)
- Uses a `.buildkite/pipeline.yml` to run:
  - `cmake -S . -B build`
  - `cmake --build build`
  - `ctest --test-dir build --verbose`
- Runs on a [Buildkite-hosted agent](https://buildkite.com/docs/pipelines/hosted-agents) with CMake and a C++ compiler preinstalled - no Docker setup needed 🎉

## Requirements

- A Buildkite agent with:
  - `cmake`
  - `make`
  - A C++ compiler like `g++` or `clang++`

  _(This example uses a **[Buildkite-hosted agent image (Linux)](https://buildkite.com/docs/pipelines/hosted-agents/linux#agent-images)** with all required tools preinstalled - no extra setup needed!)_

> 💡 The default agent queue is set in the Buildkite **Pipeline Settings → Steps** UI,
> so there's no need to specify it inside the `.buildkite/pipeline.yml` file.

<!-- docs:end -->

## License

See [LICENSE](LICENSE) (MIT)
