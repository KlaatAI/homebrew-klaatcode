class Klaatcode < Formula
  desc "AI-powered coding assistant CLI"
  homepage "https://klaatai.com"
  version "1.15.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.67&platform=darwin-arm64"
      sha256 "c613687a4e67416f6e7137e928bb1381ce54d0c462b15707e5d9c76ecf833f35"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.vercel.app/api/download?version=1.15.67&platform=linux-arm64"
      sha256 "5a0374a8be7bf4d523beb2b793b12bfb4fa8b4817ce840f40bed70de3d3b6435"
    end
    on_intel do
      url "https://klaatai.vercel.app/api/download?version=1.15.67&platform=linux-x64"
      sha256 "608528620495c4b04ab7e3510bb67f18a303d3f60a10db0c8017332771a32703"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
