class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.4.4"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.4&platform=darwin-arm64"
      sha256 "06efee9c4287795d20875ff616675fd0113d009ec99ba4454de36be7ac76f3cb"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.4&platform=darwin-x64"
      sha256 "74ddc45a25af56c74f15ed1720bc40ab69892dd95904c3028013421bba742873"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.4.4&platform=linux-arm64"
      sha256 "b84fbc5b0d3fa45093c9e81d2e6802617d416a17dc2c79e3fdd4051f36944626"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.4.4&platform=linux-x64"
      sha256 "dbf9cd886c1f4ceea0ab453c319692f24a3f7ff20cb82ef836273c520fdf1272"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
