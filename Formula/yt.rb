class Yt < Formula
  desc "Yandex Tracker CLI — NativeAOT, JSON-first, four auth methods"
  homepage "https://github.com/RoboNET/YandexTrackerCLI"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-osx-arm64.tar.gz"
      sha256 "a13468e4f3b04bc56ac349e45d54edb647f01c59245e7217e38744940ef8fe0b"
    end
    on_intel do
      odie "Intel Mac is not supported. Use Apple Silicon or build from source."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-x64.tar.gz"
      sha256 "b5f61173c9e6431baeb56d159e9305e7b930fde5277a9a8012478e1334e20f4f"
    end
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-arm64.tar.gz"
      sha256 "771a1dc61cacb3906fd706f33b34be568edb25a1e811d005b2c3262f84a59946"
    end
  end

  def install
    bin.install "yt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt --version")
  end
end
