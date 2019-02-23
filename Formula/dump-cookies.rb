class DumpCookies < Formula
  desc "Dump the contents of Apple's .binarycookies files"
  homepage "https://github.com/interstateone/BinaryCookies"
  url "https://github.com/interstateone/BinaryCookies.git", revision: "cd4decec9ebd99888af2a5b8d65474046a5767a3"
  head "https://github.com/interstateone/BinaryCookies.git"
  version "0.1.0"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/dumpcookies"
  end
end
