cask "teenymute" do
  version "1.0.0"
  sha256 "c2cb50213154e7c6eae4adf4b821cbf7e0578e211ea6aaf5bce86a0c7e562de7"

  url "https://teenymute.com/downloads/TeenyMute-#{version}.dmg"
  name "TeenyMute"
  desc "Menu bar mic and audio mute toggle"
  homepage "https://teenymute.com/"

  livecheck do
    url "https://teenymute.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyMute.app"

  zap trash: [
    "~/Library/Application Support/TeenyMute",
    "~/Library/Caches/com.teenyapps.TeenyMute",
    "~/Library/HTTPStorages/com.teenyapps.TeenyMute",
    "~/Library/Preferences/com.teenyapps.TeenyMute.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyMute.savedState",
  ]
end
