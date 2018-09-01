class Checkurl < Formula
  desc "Shell script to test if a given URL is valid"
  homepage "https://github.com/infogrind/checkurl"
  url "https://github.com/infogrind/checkurl/archive/v1.0.tar.gz"
  sha256 "d716da9ca5fe501b73b0baad5a7ab4fdb4ead3499d2c18d844353447f4318076"

  def install
    mv "checkurl.sh", "checkurl"
    bin.install "checkurl"
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    legit_urls = [
      "https://www.google.com",
      "https://www.facebook.com",
      "https://www.twitter.com",
    ]
    bogus_urls = [
      "http://www.asiojrandomblabla.com",
      "http://eweas.sdfs.net",
      "http://www33.bumbalabalabumm.org",
    ]

    errors = false

    legit_urls.each do |url|
      pass = test_url(url, 0)
      errors = true if pass == false
    end

    bogus_urls.each do |url|
      pass = test_url(url, 1)
      errors = true if pass == false
    end
  end

  def test_url(url, expected)
    print "Testing #{url}..."
    result = system "#{bin}/checkurl", url
    if result == expected
      puts "OK"
    else
      puts "ERROR"
      errors = true
    end

    errors == false
  end
end
