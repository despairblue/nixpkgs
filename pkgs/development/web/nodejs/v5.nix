{ stdenv, fetchurl, openssl, python, zlib, libuv, v8, utillinux, http-parser
, pkgconfig, runCommand, which, libtool
, callPackage
}@args:

import ./nodejs.nix (args // rec {
  version = "5.9.1";
  src = fetchurl {
    url = "http://nodejs.org/dist/v${version}/node-v${version}.tar.xz";
    sha256 = "0mdfw28smm31vi9jp9011n90p8kaxhznkpyh74h3vszwgl3ng036";
  };
})
