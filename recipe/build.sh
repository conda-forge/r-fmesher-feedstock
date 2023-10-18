#!/bin/bash

# tolerate older osx sdk
export PKG_CPPFLAGS="-D_LIBCPP_DISABLE_AVAILABILITY ${PKG_CPPFLAGS}"

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
