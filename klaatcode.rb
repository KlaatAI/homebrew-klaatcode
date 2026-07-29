class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.3"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.3&platform=darwin-arm64"
      sha256 "c86d16b7d346c209430662a8ca3412b3bbe440e87242fd81e3df4114a7f95fea"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.3&platform=darwin-x64"
      sha256 "6899cf1a2dde3ade6590b5d20f76be537398ef08d2ad1f4fcd0751e3a9b77424"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.3&platform=linux-arm64"
      sha256 "43da3ccbf7dba945f561c9cd525be002c19d97d4704e2c410cba2b4dd3cf9d17"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.3&platform=linux-x64"
      sha256 "cc66a665756d8056a01cef8d2fa160a9d3f30e9463da992753f6efe997c93675"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
