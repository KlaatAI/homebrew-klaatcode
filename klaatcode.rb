class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.4.0"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.0&platform=darwin-arm64"
      sha256 "7779a304fe5a4187d815f1c113e19ae0660394333dc85dff076a0a59bd50d32d"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.0&platform=darwin-x64"
      sha256 "fecd94163510d588666fbeccccec7e586ccc360c804eaefaecf99015d4d0d46f"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.0&platform=linux-arm64"
      sha256 "0923a8afb01aad4a693873ac2cd7535a22a6b346bc780d35725bb9243becf75c"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.0&platform=linux-x64"
      sha256 "6c44c1a053fc57bae4ef1d33c080d892cd7d0b8fec62eb4893d2ac79668e30ca"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
