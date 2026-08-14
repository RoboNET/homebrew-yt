class Yt < Formula
  desc "Yandex Tracker CLI — NativeAOT, JSON-first, four auth methods"
  homepage "https://github.com/RoboNET/YandexTrackerCLI"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-osx-arm64.tar.gz"
      sha256 "94505a0528260a92962d81120db476e54df6461d250a6a4c7c15f46db7e2721e"
    end
    on_intel do
      odie "Intel Mac is not supported. Use Apple Silicon or build from source."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-x64.tar.gz"
      sha256 "51d58e4c59011e79f5800fcb3fed60094e0d5e357e4fb8bc1cee1577db2516fb"
    end
    on_arm do
      url "https://github.com/RoboNET/YandexTrackerCLI/releases/download/v#{version}/yt-linux-arm64.tar.gz"
      sha256 "61c42e23649c47833210434c3807a7554871b455b5a96a4dcbcfdd5b8ebccf0c"
    end
  end

  def install
    bin.install "yt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt --version")
  end
end
