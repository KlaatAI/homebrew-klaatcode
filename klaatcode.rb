class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.68&platform=darwin-arm64"
      sha256 "d230f30f1532740428c4c37cc11b19d4ab5f194e7b067da6d8bf403dfb9368d6"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.68&platform=linux-arm64"
      sha256 "5028a0e5781d44704e73b2de08598db75903a1fc3692e420726654b8a62e4800"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.68&platform=linux-x64"
      sha256 "9480557ef85b6e39cfdbff9f5fedcf1a9af1c421b0c290a1bdb00c142db6e44b"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
