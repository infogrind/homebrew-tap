class Imdbtag < Formula
  include Language::Python::Virtualenv

  desc "Tagging script to match movie directories with a movie DB"
  homepage "https://github.com/infogrind/imdbtag"
  url "https://github.com/infogrind/imdbtag/archive/v1.2.tar.gz"
  sha256 "a69dd588eb043aec5a8c3f3edcf04db0b1afe3dce9430030ecbc9a4b3c7daf50"

  depends_on "python@2" if MacOS.version <= :snow_leopard

  resource "fuzzywuzzy" do
    url "https://files.pythonhosted.org/packages/81/54/586e9f34401dc7f5248589765bb67d49b837e2f309f25a33e82e896cba0a/fuzzywuzzy-0.17.0.tar.gz"
    sha256 "6f49de47db00e1c71d40ad16da42284ac357936fa9b66bea1df63fed07122d62"
  end

  resource "simplejson" do
    url "https://files.pythonhosted.org/packages/e3/24/c35fb1c1c315fc0fffe61ea00d3f88e85469004713dab488dee4f35b0aff/simplejson-3.16.0.tar.gz"
    sha256 "b1f329139ba647a9548aa05fb95d046b4a677643070dc2afc05fa2e975d09ca5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/54/1f/782a5734931ddf2e1494e4cd615a51ff98e1879cbe9eecbdfeaf09aa75e9/requests-2.19.1.tar.gz"
    sha256 "ec22d826a36ed72a7358ff3fe56cbd4ba69dd7a6718ffd450ff0e9df7a47ce6a"
  end

  resource "parse-torrent-name" do
    url "https://files.pythonhosted.org/packages/1a/c9/fbafe4f215ff24a1209e848763699cb8831d459c138fe164ea45b04c02ea/parse-torrent-name-1.1.1.tar.gz"
    sha256 "ada6fa9d9f27dee0dece96cbd845962e3d22ec70239fecdc5b71e776c0ec31c4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e1/0f/f8d5e939184547b3bdc6128551b831a62832713aa98c2ccdf8c47ecc7f17/certifi-2018.8.24.tar.gz"
    sha256 "376690d6f16d32f9d1fe8932551d80b23e9d393a8578c5633a2ed39a64861638"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/3c/d2/dc5471622bd200db1cd9319e02e71bc655e9ea27b8e0ce65fc69de0dac15/urllib3-1.23.tar.gz"
    sha256 "a68ac5e15e76e7e5dd2b8f94007233e01effe3e50e8daddf69acfd81cb686baf"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c4935/idna-2.7.tar.gz"
    sha256 "684a38a6f903c1d71d6d5fac066b58d7768af4de2b832e426ec79c30daa94a16"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "python-Levenshtein" do
    url "https://files.pythonhosted.org/packages/42/a9/d1785c85ebf9b7dfacd08938dd028209c34a0ea3b1bcdb895208bd40a67d/python-Levenshtein-0.12.0.tar.gz"
    sha256 "033a11de5e3d19ea25c9302d11224e1a1898fe5abd23c61c7c360c25195e3eb1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"imdbtag", :exist?
  end
end
