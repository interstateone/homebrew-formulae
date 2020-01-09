class HighlightsToMarkdown < Formula
  desc "Extracts highlight annotations from a PDF file and prints them as Markdown quotes"
  homepage "https://github.com/interstateone/highlights-to-markdown"
  url "https://github.com/interstateone/highlights-to-markdown.git", tag: "1.1.1"
  head "https://github.com/interstateone/highlights-to-markdown.git"

  depends_on xcode: ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/h2m"
  end
end
