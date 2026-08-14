class Yt < Formula
  desc "Yandex Tracker CLI — NativeAOT, JSON-first, four auth methods"
  homepage "https://github.com/RoboNET/YandexTrackerCLI"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-osx-arm64.tar.gz"
      sha256 "9daa3e602f8c49f33339c25c78707f2a3d5f0f44378770800e3b6caa2d68347e"
    end
    on_intel do
      odie "Intel Mac is not supported. Use Apple Silicon or build from source."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-x64.tar.gz"
      sha256 "ac6333986c6e3a6e1d07a0dfc5476e35f31ea64569562271ed8b3f72b6d82b77"
    end
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-arm64.tar.gz"
      sha256 "2d77c9052dbe0ec8e96773869db24a1a62983401ba75e14dd14d494058d853e9"
    end
  end

  def install
    bin.install "yt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt --version")
  end
end
