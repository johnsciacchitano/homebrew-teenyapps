cask "teenysound" do
  version "1.0.0"
  sha256 "a8ab5ce8ef9898b3aa607651bf78c81a43a668713bca23fdc148459cab2c6e7b"

  url "https://teenysound.com/downloads/TeenySound-#{version}.dmg"
  name "TeenySound"
  desc "Per-app audio routing and volume control"
  homepage "https://teenysound.com/"

  livecheck do
    url "https://teenysound.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenySound.app"

  zap trash: [
    "~/Library/Application Support/TeenySound",
    "~/Library/Caches/com.teenyapps.TeenySound",
    "~/Library/HTTPStorages/com.teenyapps.TeenySound",
    "~/Library/Preferences/com.teenyapps.TeenySound.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenySound.savedState",
  ]
end
