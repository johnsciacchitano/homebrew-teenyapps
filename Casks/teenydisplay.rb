cask "teenydisplay" do
  version "1.0.0"
  sha256 "85883f8c7b47131d202b15b822f2e721057549eb90458b9d4900cb1dcbe5a377"

  url "https://teenydisplay.com/downloads/TeenyDisplay-#{version.csv.first}.dmg"
  name "TeenyDisplay"
  desc "Quick display resolution, profile, and preset controls"
  homepage "https://teenydisplay.com/"

  livecheck do
    skip "Update feed temporarily withdrawn"
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
