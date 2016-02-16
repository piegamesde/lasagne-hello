{ pkgs, stdenv, pythonPackages, fetchurl,  ...}:

pythonPackages.buildPythonPackage rec {
  name = "Lasagne-0.1";

  propagatedBuildInputs = with pythonPackages; [ numpy scipy six ];

  src = fetchurl {
    url = "https://github.com/Lasagne/Lasagne/archive/v0.1.zip";
    sha256 = "07sg12liasfx9dh4f30x7wvkbnkplc637z7zfr27brm01a5nbxyd";
  };

  meta = with stdenv.lib; {
    description = "Lightweight library to build and train neural networks in Theano";
    homepage = http://lasagne.readthedocs.org/en/latest/index.html;
    license = licenses.mit;
  };
}
