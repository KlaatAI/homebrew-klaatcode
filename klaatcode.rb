class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.69&platform=darwin-arm64"
      sha256 "1ae77b4c03f0ab27acf65cc430bcb3caeb041d1488a4d4bb42dec3bb3171f59c"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.69&platform=linux-arm64"
      sha256 "d6f6ced57731d6481074e1723f26badfc94fc5814da62687b6ed6e4ebc3c595a"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.69&platform=linux-x64"
      sha256 "6288896e3742da3cad43badbda309b76e31058db2559052938a225b3d390116f"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
