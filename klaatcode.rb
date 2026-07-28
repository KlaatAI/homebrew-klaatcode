class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.2"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.2&platform=darwin-arm64"
      sha256 "35ebdf5363bd51800a70049e24c0f5cc246bc24aa1f5ead02b984d092ec3a9b9"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.2&platform=darwin-x64"
      sha256 "4ce1a36e16231624dc6c547610d5a8685995543d2ca045061fc332533edf7191"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.2&platform=linux-arm64"
      sha256 "e4bb7ff025b3d305fb3aad96c502ed3b2e38fc93f340f82c18737e4b57735779"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.2&platform=linux-x64"
      sha256 "4b2e55fc5ee1ee804c19c8c32d39d4812016b8b08b323b97cbeb092669b6dfef"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
