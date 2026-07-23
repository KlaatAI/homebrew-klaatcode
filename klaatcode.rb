class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.3.0"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.0&platform=darwin-arm64"
      sha256 "6855fc92d119a08802f6330815f2cf88c6a92827757288b9c3f4add3f2d28078"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.0&platform=darwin-x64"
      sha256 "e7844507fdd15ab926df031587bbd1d6fe838b9e8dc8dcec889d7461c2cd0b93"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.3.0&platform=linux-arm64"
      sha256 "1373be2503a2a3f4892c74432ae42f0247596b578b35143f06f66f918e16cac5"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.3.0&platform=linux-x64"
      sha256 "d0d2573104f48cced3ad1a29986a454f0b3fa337719f9b5a153a329c41b0e562"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
