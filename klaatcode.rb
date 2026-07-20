class Klaatcode < Formula
  desc "KlaatCode — the KlaatAI coding agent for your terminal"
  homepage "https://klaatai.com"
  version "2.2.5"
  license "SEE LICENSE IN LICENSE"

  on_macos do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.5&platform=darwin-arm64"
      sha256 "2d5f75aa99447949a7d2201c6f53afb2e732d46b531f5f459aa871d0641cf558"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.5&platform=darwin-x64"
      sha256 "847c707fb85566695790faad1fa2ac437ecc3d01596ad6a4d63fb5508080f7ab"
    end
  end

  on_linux do
    on_arm do
      url "https://klaatai.com/api/download?version=2.2.5&platform=linux-arm64"
      sha256 "743da756ad7cecb064a301e958adfb49126ef007a87c7b1726f1a16ba35d806a"
    end
    on_intel do
      url "https://klaatai.com/api/download?version=2.2.5&platform=linux-x64"
      sha256 "e2d8281b085823ba188dae76e3c3b06b8110bf3fcf273aad4bca26b35408f61d"
    end
  end

  def install
    bin.install "klaatcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klaatcode --version")
  end
end
