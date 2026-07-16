class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.0"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.0&platform=darwin-arm64"
      sha256 "2bd1beb290075eb144867af25c19f38415bb70c60b1d9b6a6c845f64f87bcb67"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.0&platform=darwin-x64"
      sha256 "29acc6aac705cb0e082bd013e99b9c6ee9f33014dd1e37eba84a181859086ceb"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.0&platform=linux-arm64"
      sha256 "1d8877d8323650afeceda95be1851ca359d54108af3fedcd572acd8027ab3cac"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.0&platform=linux-x64"
      sha256 "51bc67452101ee5802f1e10bf2200f819e8cf824c7352095c3de58d0b3d8947a"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
