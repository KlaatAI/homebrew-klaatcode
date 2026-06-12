class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.72&platform=darwin-arm64"
      sha256 "a4caf9ceed05dae72886d2ff341a996840d789a62c0a35084ea07358d1ad61be"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.72&platform=linux-arm64"
      sha256 "623097481eb274d7a93b99033d4ef3f45482c618b98addc6392c5115126e0ca5"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.72&platform=linux-x64"
      sha256 "53044513496cec79091c958544c9d6f8d53ca959ae62615cbd3c5d0fa05bf9ee"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
