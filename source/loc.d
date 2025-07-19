// SIMD optimized location

import std.conv : to;

struct
TLen (L) {  // SIMD
    L[2] xy;

    this (int x, int y) {
        xy[0] = x.to!L;
        xy[1] = y.to!L;
    }
}

struct
TLoc (L) {  // SIMD
    L[2] xy;

    auto x () { return xy[0]; }
    auto y () { return xy[1]; }

    this (int x, int y) {
        xy[0] = x.to!L;
        xy[1] = y.to!L;
    }
}
