class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.4.1"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.1&platform=darwin-arm64"
      sha256 "fc6ad81794b2b08514e425206f5bf7a3cfe8f61ce7d2f2c46b99fe3e9560fe09"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.1&platform=darwin-x64"
      sha256 "7a11c99dde9f36272b6c49b5649c7ad255178d0fb72e4c90a865d03ba23d2cdc"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.1&platform=linux-arm64"
      sha256 "b65f283dbbf79c775febe469681d3fce8ba2a9eab673bc1017eb8a23ab81e50a"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.1&platform=linux-x64"
      sha256 "8504626c7ca91271d1a485a803e4eaa9404f2e03b9725f1cdda9a449f83b2bfc"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
