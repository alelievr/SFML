#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	cmake -DCMAKE_BUILD_TYPE=Release && make
elif [[ "$OSTYPE" == "darwin"* ]]; then
	cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_FLAGS="-stdlib=libc++" -DCMAKE_C_FLAGS="-stdlib=libc++" . && make
elif [[ "$OSTYPE" == "cygwin" ]]; then
	echo lol r u trying to run this on windows ?
elif [[ "$OSTYPE" == "msys" ]]; then
	echo lol r u trying to run this on windows ?
elif [[ "$OSTYPE" == "win32" ]]; then
	echo lol win32 what else ?
elif [[ "$OSTYPE" == "freebsd"* ]]; then
	cmake -DCMAKE_BUILD_TYPE=Release && make
else
	echo uncknow distribution GG
fi
