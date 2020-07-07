// pch.h: This is a precompiled header file.
// Files listed below are compiled only once, improving build performance for future builds.
// This also affects IntelliSense performance, including code completion and many code browsing features.
// However, files listed here are ALL re-compiled if any one of them is updated between builds.
// Do not add files here that you will be updating frequently as this negates the performance advantage.

#ifndef PCH_H
#define PCH_H

#include <list>

#include <algorithm>
#include <numeric>

#include <iostream>

// Core lua binding library.
#define SOL_SAFE_USERTYPE 1
#define SOL_EXCEPTIONS_SAFE_PROPAGATION 1
#include <sol.hpp>

#endif //PCH_H
