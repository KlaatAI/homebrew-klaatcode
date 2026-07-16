class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.1"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.1&platform=darwin-arm64"
      sha256 "fb973b243be50423ac1f69e0f008fc9e51752d9fe0c37289bcd20e3088855d81"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.1&platform=darwin-x64"
      sha256 "5b4cd3d2d44ee5d920a1af1d113f1e4e69ba7ea7cfaa1427df38c3095ef57fa2"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.1&platform=linux-arm64"
      sha256 "8c531f956f3f102d3993c85d7fba0838b19d1515bc7ea1ad8345e9e5109ad855"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.1&platform=linux-x64"
      sha256 "37bb08f535e74f56f9b5253da4db6971b20e84c879f3811c0d5eb7d09485ee56"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
