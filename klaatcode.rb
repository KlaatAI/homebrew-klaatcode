class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.4.3"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.3&platform=darwin-arm64"
      sha256 "d5fca63942fd1286e50ba411f49da66cbcb21437d49a2f8b09c97834861b1509"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.3&platform=darwin-x64"
      sha256 "2a996e20017259e4662c81eb40611ba9d5a6e4cd736349239e2007935716f1ed"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.3&platform=linux-arm64"
      sha256 "22b2337d26dcfbab16318b43b9d8e82783fdcb79d7c99d382c73631593d07279"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.3&platform=linux-x64"
      sha256 "bd0a0045054def49842b710d803725c37f8f5d0885b9b321010d93e5bd09100d"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
