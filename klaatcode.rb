class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.74&platform=darwin-arm64"
      sha256 "5b93540b23face78ab360a81130187d4d2fd9149abe7f239146df0342309a1f2"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.74&platform=linux-arm64"
      sha256 "4d8d35f19274acba1554877fb303b14e57085c55cb13aab7ab95a7f0182401bf"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.74&platform=linux-x64"
      sha256 "30b16c5c9dfd92e1283e9791f90dfb6f99265b579bf59cfa42bb1845d7aec221"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
