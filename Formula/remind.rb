class Remind < Formula
  desc "A Swift CLI app to quickly deal with your reminders"
  homepage "https://github.com/interstateone/remind"
  url "https://github.com/interstateone/remind.git", revision: "ef607b79fbd03acc004629f60f9152b1f9cac722"
  head "https://github.com/interstateone/remind.git"
  version "1.0.5"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/remind --help"
  end
end
