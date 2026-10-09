class Ipadmp4 < Formula
  include Language::Python::Virtualenv

  desc "Convert movies to MP4 for the iPad TV app, with surround audio and subtitles"
  homepage "https://github.com/infogrind/ipadmp4"
  url "https://github.com/infogrind/ipadmp4/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ecd47014d7bba833ad30f7d7da45c23d720736e56cce06e4483e864443d314a1"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ipadmp4 --version")
    assert_match "no such file or directory", shell_output("#{bin}/ipadmp4 missing.mkv 2>&1", 1)
  end
end
