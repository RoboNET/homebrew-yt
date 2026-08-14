class Yt < Formula
  desc "Yandex Tracker CLI — NativeAOT, JSON-first, four auth methods"
  homepage "https://github.com/RoboNET/YandexTrackerCLI"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-osx-arm64.tar.gz"
      sha256 "21556ebf58d548eb8bedc0a6bebd5bbea11b8082a3c781e90f30565206bb0abc"
    end
    on_intel do
      odie "Intel Mac is not supported. Use Apple Silicon or build from source."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-x64.tar.gz"
      sha256 "58e53c45f3079f27d290b17399802e77f1375494f0192fce7a15eff0e679ba95"
    end
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-arm64.tar.gz"
      sha256 "90dcbdbdff351a3fa62f2264d5b5413b01676d3486df61351baf56bc3d7975e3"
    end
  end

  def install
    bin.install "yt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt --version")
  end
end
