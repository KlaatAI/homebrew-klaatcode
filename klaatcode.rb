class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.4.2"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.2&platform=darwin-arm64"
      sha256 "950ac74faedf41334997a98d809a52805fe7b7df91fd58f5c8125a216c1c1ba9"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.2&platform=darwin-x64"
      sha256 "8b1b56cc68a239363062b1c1890a4e467db76c4676debf96ca33592344545ede"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.2&platform=linux-arm64"
      sha256 "20799f11315c366129abea2d69d151ee50a7eecd5997e511b1122b14924fa6b0"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.2&platform=linux-x64"
      sha256 "f01e1f3160f26a2d92a2a20aa0f791a25f24ee3290319770432305270f8bd3e7"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
