#!/bin/bash

# tolerate older osx sdk
sed -ie 's/PKG_CPPFLAGS=/PKG_CPPFLAGS=-D_LIBCPP_DISABLE_AVAILABILITY /g' src/Makevars

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
