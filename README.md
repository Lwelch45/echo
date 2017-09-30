# Echo 

Echo-server & client based on Seastar framework.

# How to build it?

```
git clone git@github.com:fastio/echo.git && cd echo

${PYTHON_PATH}/bin/python3 ./configure.py --mode release

ninja -j2
```

You will find two binary runnable files in the ${PROJECT}/build/release directory, if everything goes well.

# How to run it?

First, start the server, which named echo_server.

```
${PROJECT}/build/release/echo_server --smp=2 --cpuset=1,2 --port=${PORT}
```

Second, start the client to launch request to server.

```
build/release/echo_client --smp=2 --cpuset=3,4 --server=168.1.1.1:${PORT}
```
