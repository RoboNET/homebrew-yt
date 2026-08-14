class Yt < Formula
  desc "Yandex Tracker CLI — NativeAOT, JSON-first, four auth methods"
  homepage "https://github.com/RoboNET/YandexTrackerCLI"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-osx-arm64.tar.gz"
      sha256 "f986265e5a6d5b2503a29ea3ee739d76177588e542a450348284b12a2d6b728b"
    end
    on_intel do
      odie "Intel Mac is not supported. Use Apple Silicon or build from source."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-x64.tar.gz"
      sha256 "848e3afdf06b31b344fffef4b39d3caeabd1af4721e2b28fb1e48c570342d8ea"
    end
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-arm64.tar.gz"
      sha256 "dbe8493321f64b17e7669a7d322b8067dfc9d4089331ac0329851bc336cf021e"
    end
  end

  def install
    bin.install "yt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt --version")
  end
end
