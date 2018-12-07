class HighlightsToMarkdown < Formula
  desc "Extracts highlight annotations from a PDF file and prints them as Markdown quotes"
  homepage "https://github.com/interstateone/highlights-to-markdown"
  url "https://github.com/interstateone/highlights-to-markdown.git", revision: "c0259c8c733a819954319b2aac57eab680abf4c1"
  head "https://github.com/interstateone/highlights-to-markdown.git"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/h2m"
  end
end
