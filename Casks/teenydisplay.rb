cask "teenydisplay" do
  version "1.0.2"
  sha256 "40fb67c7a7cd41e4e932603eff96437f3042e5e6adaa2bcb76379a8403036e2a"

  url "https://teenydisplay.com/downloads/TeenyDisplay-#{version.csv.first}.dmg"
  name "TeenyDisplay"
  desc "Quick display resolution, profile, and preset controls"
  homepage "https://teenydisplay.com/"

  livecheck do
    url "https://teenydisplay.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyDisplay.app"

  zap trash: [
    "~/Library/Application Support/com.teenyapps.TeenyDisplay",
    "~/Library/Application Support/TeenyDisplay.store",
    "~/Library/Application Support/TeenyDisplay.store-shm",
    "~/Library/Application Support/TeenyDisplay.store-wal",
    "~/Library/Caches/com.teenyapps.TeenyDisplay",
    "~/Library/HTTPStorages/com.teenyapps.TeenyDisplay",
    "~/Library/Preferences/com.teenyapps.TeenyDisplay.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyDisplay.savedState",
  ]
end
