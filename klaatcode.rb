class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.9"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.9&platform=darwin-arm64"
      sha256 "786e2241be0d046c7a87e285563f4fd9b3b16a13ed97ca4533661005ce94f273"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.9&platform=darwin-x64"
      sha256 "66911e8da5a7791c5405b164791ad998c6d1e6fadf44d9f8f7e1b116cd9fe06a"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.9&platform=linux-arm64"
      sha256 "31aeaf45371011380d5a6528787d6e1d357698c2b3d397f8d3eba19200ee20b5"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.9&platform=linux-x64"
      sha256 "8aabc9f12d4f4a70f6f0972464b20fc68a2850792fbdf13825e321035ce90a53"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
