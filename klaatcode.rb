class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.2"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.2&platform=darwin-arm64"
      sha256 "a85c098a8d2d47baf79e4201b79f0b9de0d3b055bb1752ada3cbf893f56d848b"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.2&platform=darwin-x64"
      sha256 "a4b9665f81ab805d6a13b3f8e8becb91d97c870b2c784182480aa48723065daf"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.2&platform=linux-arm64"
      sha256 "d5eeea7643ba91947919ccc27cedf25ce879d493faceacf0e02f225deaf9279d"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.2&platform=linux-x64"
      sha256 "93e8bbb7b3668142c3021793ca8a1412f9587fafcb0b724314f71218221d7c05"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
