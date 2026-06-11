class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.71&platform=darwin-arm64"
      sha256 "47cde9f68581c6080e277fefee587d999257a04185d25407805f0e4838f966dc"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.71&platform=linux-arm64"
      sha256 "216974cf973b337db09a48be4e20d3ee0086dfab368cbce79b3cb0142b3d8c78"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.71&platform=linux-x64"
      sha256 "01912aaab11ba02e8c385412bd3628cc22f12c0804fede9c132a204be2fe284c"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
