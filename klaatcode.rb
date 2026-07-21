class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.6"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.6&platform=darwin-arm64"
      sha256 "cf9728eb7a483404882bdbf22c1b5d15e1ceb4a2ff65a3f5c33c8f66ca22805b"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.6&platform=darwin-x64"
      sha256 "4fc23de66e7cdab5b5d04b300b1d7cb6c5f66ec8b4e4ac7984f38ffaa1b6b2b8"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.6&platform=linux-arm64"
      sha256 "44c1359fcd94cabea30dbb49b536e2ee465d3a5f3892ab7bf940fd781b3cfa15"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.6&platform=linux-x64"
      sha256 "94b474f6fb4b3d0250cc4b01e617c99b17d56105e047a8e718b4f5aa3c84b64b"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
