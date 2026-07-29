class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.4"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.4&platform=darwin-arm64"
      sha256 "4dea9c8c1e6ab55296ededa840034ea858697e92f3afa1908171f7a5cee5e4c6"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.4&platform=darwin-x64"
      sha256 "b6987301b49059c21bcf50cc5beff3bd041372061c334fa2bc326d152e9e47ea"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.4&platform=linux-arm64"
      sha256 "80c893ad48e3fffd593fe3734cfb57dd24ef38d4c879fdf330b80248b5b3bbbe"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.4&platform=linux-x64"
      sha256 "0cde569bdb7f8ed6f9bbf431a0f1ad035005000749fc7c40038619423e931846"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
