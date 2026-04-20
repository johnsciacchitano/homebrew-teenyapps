cask "teenyclip" do
  version "1.0.0"
  sha256 "99177910019ec8fa5185c7de19b241635934c8d3fb1722cf627e555987a20379"

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
