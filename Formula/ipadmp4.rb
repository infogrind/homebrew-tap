class Ipadmp4 < Formula
  include Language::Python::Virtualenv

  desc "Convert movies to MP4 for the iPad TV app, with surround audio and subtitles"
  homepage "https://github.com/infogrind/ipadmp4"
  url "https://github.com/infogrind/ipadmp4/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8520a5401ac480484858a4d4f7ddb8aabeaceec05ee2222dc86b785c3488c04e"
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
