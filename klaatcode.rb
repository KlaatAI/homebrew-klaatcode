class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.0.0"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.0.0&platform=darwin-arm64"
      sha256 "0555e8e3907b2ebeac21964ae361ad51e260558e899725f3b154bf4337fb4b81"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.0.0&platform=darwin-x64"
      sha256 "d3fb503a9e3490ea913cffc0bec374f6e92fb29bfdb99fb9812865fd1004f113"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.0.0&platform=linux-arm64"
      sha256 "1fa2fe786316d34a6bf580eed80e9959b187a6e3c87e9476c2d16fc9b3af510a"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.0.0&platform=linux-x64"
      sha256 "8a9bb1dca8c7c06078c01d81c8a6cd159f74927b102b9dd97f86c1dfca7fb644"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
