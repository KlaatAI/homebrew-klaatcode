class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.8"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.8&platform=darwin-arm64"
      sha256 "5e9401412f1ef8fe2be25ec2da6a390e8c09dfa309f57861660e01d8257a6216"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.8&platform=darwin-x64"
      sha256 "32b8cabae4ad2154d9fec235912212734eff97bbf85a42cb3cad6de8ad99964d"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.8&platform=linux-arm64"
      sha256 "231903a988335d0510f716d750f7d1db09408e96c30bd53f6aa18131d0b9fe44"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.8&platform=linux-x64"
      sha256 "e7051a8320ee7f847ed8226719d0d8a057390007849860622992c9f6f5d4fcc7"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
