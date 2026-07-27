class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.1"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.1&platform=darwin-arm64"
      sha256 "af4cd28076b5429a65ec5af0dd6fd5d93f094383af9453b2685d5782e538b03b"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.1&platform=darwin-x64"
      sha256 "5897de190164bbda77931087007490d5bbba4e38db120c348bd99b402e2e46f8"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.1&platform=linux-arm64"
      sha256 "49cb7196b9ef3ab1dc1bb21c3cd0c2d176547ba7901aa2becd25be5f9ce563d3"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.1&platform=linux-x64"
      sha256 "760f50390f1b081e2ce991ac27d4289d958369d94ad7450072f23cfae72a98f1"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
