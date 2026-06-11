class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.70&platform=darwin-arm64"
      sha256 "9fc2458f4c11fc81551afc76a6339d2ef68958b9a274fc4f87809a0f2a4c9911"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=1.15.70&platform=linux-arm64"
      sha256 "6a6be68619730345c080caa38de09b4976b00ca6a4db2f3ac4817f1fd1a56577"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=1.15.70&platform=linux-x64"
      sha256 "9ad15d4337f400cf485977c4192892acb3d741590ddc9834352044bf2ee863d9"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
