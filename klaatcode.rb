class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.73&platform=darwin-arm64"
      sha256 "8caebb03992e375561c868d09df4b0744cab18e021cc9a931c394ab0e1924122"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.73&platform=linux-arm64"
      sha256 "7f1cc8de308c19a86ea6033675a43c61ac20308e2ec79e57a471a002473de0b9"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.73&platform=linux-x64"
      sha256 "9cc2e9a7ffb5968b9b3c12ed73238acd82b3fa55f329e3c33366e79c71d17538"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
