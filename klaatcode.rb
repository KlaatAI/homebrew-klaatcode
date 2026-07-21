class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.7"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.7&platform=darwin-arm64"
      sha256 "d15f70e09e5ed882b377e605c315461dae99f4f2ff26bec34c6b3cc05a13b937"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.7&platform=darwin-x64"
      sha256 "358d24cb7a22d5b0c1a6e422f8d3715af67428ed5f80c4fccbd4f6b4d774da9b"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.7&platform=linux-arm64"
      sha256 "d9a8a28b8e59f9b01327e3b12ac3497245dae249fa6c3ac60d02a6e9f75690fb"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.7&platform=linux-x64"
      sha256 "cea47187bba0db22fb849c4fdb59af8610e7623c9cdb1496c97797db1be0bff1"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
