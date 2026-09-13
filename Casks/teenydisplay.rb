cask "teenydisplay" do
  version "1.0.1,2"
  sha256 "b1e1f0153649b8b49cb7fb0fc410c984ffb5bc859bc8298c76f742af291534cd"

  url "https://teenydisplay.com/downloads/TeenyDisplay-#{version.csv.first}.dmg"
  name "TeenyDisplay"
  desc "Quick display resolution, profile, and preset controls"
  homepage "https://teenydisplay.com/"

  livecheck do
    url "https://teenydisplay.com/appcast.xml"
    strategy :sparkle
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
