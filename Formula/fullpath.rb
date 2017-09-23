class Fullpath < Formula
  desc "A script to show the full path corresponding to a relative path"
  homepage "https://github.com/infogrind/fullpath"
  url "https://github.com/infogrind/fullpath/archive/v1.0.tar.gz"
  sha256 "14960e7bc04526561a8a9bc8e68ad59fc56cc5fe20f8c61ae7db8fb1c4215a65"

  def install
      bin.install "fullpath"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fullpath`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
