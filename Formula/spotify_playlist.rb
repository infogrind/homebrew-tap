class SpotifyPlaylist < Formula
  include Language::Python::Virtualenv

  desc "Create Spotify playlist from MP3 directories or M3U playlists"
  homepage "https://github.com/infogrind/spotify_playlist"
  url "https://github.com/infogrind/spotify_playlist/archive/refs/tags/v0.91.tar.gz"
  sha256 "d185fe727d453d14d00b4ae9da18b80f24897cdcf8cbdb2b93cb46935640a8ac"
  license "MIT"

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
    sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
  end

  resource "charset_normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/47/da/d283a37303a995cd36f8b92db85135153dc4f7a8e4441aa827721b442cfb/redis-5.2.1.tar.gz"
    sha256 "16f2e22dff21d5125e8481515e386711a34cbec50f0e44413dd7d9c060a54e0f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "spotipy" do
    url "https://files.pythonhosted.org/packages/18/22/d900e55cfdd489ecdacf560aea4618848893fcbab4433bf62d0d731fa030/spotipy-2.25.1.tar.gz"
    sha256 "607d3c43722b7e217a7e6c82f17258b798b92a512017d60c06323d62ae814cd7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: spotify-playlist",
      shell_output("#{bin}/spotify-playlist 2>&1", 2)
  end
end
