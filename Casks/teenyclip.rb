cask "teenyclip" do
  version "1.0.0"
  sha256 "a9f8ce63fe0bd291a7104400557a22b372265b122fada2c8f55e9a419bd5103e"

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
