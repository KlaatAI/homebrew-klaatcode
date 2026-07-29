class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.5"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.5&platform=darwin-arm64"
      sha256 "fedfd285044bcb5522223e99c4ba5768e1c7147d10a00dd78649a42d43480e35"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.5&platform=darwin-x64"
      sha256 "b27f1b269d74985833519d09f9eeb12c52ae5d74378844a6c31947d9524261ac"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.5&platform=linux-arm64"
      sha256 "bb0fa2d8667123421279603f31da1437f9bb487dfd333d8325062d68b094b0ad"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.5&platform=linux-x64"
      sha256 "d487501a1e1dcdd70be92561b2c3049f5291d8554f5479fe5c86448a9dd8aee1"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
