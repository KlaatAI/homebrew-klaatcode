class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.4"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.4&platform=darwin-arm64"
      sha256 "32b62d7b06a8cfa8ed690830408b98dc6c791be1d97b0aa3419fbb103d224133"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.4&platform=darwin-x64"
      sha256 "912ca761ba1ac6cce767b3f8e23838a770d8e38a1d41bba3d4ce61745f226b40"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.4&platform=linux-arm64"
      sha256 "ace765515ce4bfd491bda742d3b644d2d2881c66efd5774d96745327be5c0559"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.4&platform=linux-x64"
      sha256 "8b5a5d7cb95b438bc2b632a6c910395fa680f5a2576e9adfbfe9ef26381e4870"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
