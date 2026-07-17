class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.3"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.3&platform=darwin-arm64"
      sha256 "814a51ee2e787b331536c3e67e3247fd54d05257b59b835949fadf77700daa2f"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.3&platform=darwin-x64"
      sha256 "cb91517c3a06ab1bbd3f167439197f081198a44edbfd2aa12e3cd7a66f130654"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.3&platform=linux-arm64"
      sha256 "336827319e2a04281cd923c776b2470e6fed03ad909a622cc87be881583fabcd"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.3&platform=linux-x64"
      sha256 "6c26e83ae570e685de0a710935f460dc5c6f98ddc58964e9111acd14bcee4199"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
