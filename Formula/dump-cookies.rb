class DumpCookies < Formula
  desc "Dump the contents of Apple's .binarycookies files"
  homepage "https://github.com/interstateone/BinaryCookies"
  url "https://github.com/interstateone/BinaryCookies.git", revision: "5fffd16d021e478376e841c0768d021598d70c5f"
  head "https://github.com/interstateone/BinaryCookies.git"
  version "1.0.0"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/dumpcookies"
  end
end
