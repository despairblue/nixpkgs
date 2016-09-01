{ stdenv, fetchurl, openssl, python, zlib, libuv, v8, utillinux, http-parser
, pkgconfig, runCommand, which, libtool
, callPackage
, icu
}@args:

import ./nodejs.nix (args // rec {
  version = "5.12.0";
  extraConfigFlags = [ "--with-intl=system-icu" ];
  extraBuildInputs = [ icu ];
  src = fetchurl {
    url = "http://nodejs.org/dist/v${version}/node-v${version}.tar.xz";
    sha256 = "1zmdzlpa57c814lzqd2x5v215f9f07n0867fdqajaahzy5rn74jg";
  };
})
