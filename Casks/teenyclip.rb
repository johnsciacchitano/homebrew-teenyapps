cask "teenyclip" do
  version "1.0.0"
  sha256 "41801a47cb1f8c2f15aac5b30d5281ddd206a2477ca81245882e658e8e44baef"

  url "https://teenyclip.com/downloads/TeenyClip-#{version}.dmg"
  name "TeenyClip"
  desc "Clipboard history for your menu bar"
  homepage "https://teenyclip.com/"

  livecheck do
    url "https://teenyclip.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyClip.app"

  zap trash: [
    "~/Library/Application Support/TeenyClip",
    "~/Library/Caches/com.teenyapps.TeenyClip",
    "~/Library/HTTPStorages/com.teenyapps.TeenyClip",
    "~/Library/Preferences/com.teenyapps.TeenyClip.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyClip.savedState",
  ]
end
