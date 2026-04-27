cask "teenyshelf" do
  version "1.0.0"
  sha256 "5b2a1eddc8863dbd37d97574b3a2cb1ce1f727a028da8e95cdfea4ad393d834b"

  url "https://teenyshelf.com/downloads/TeenyShelf-#{version}.dmg"
  name "TeenyShelf"
  desc "Drag-and-drop file shelf for the menu bar"
  homepage "https://teenyshelf.com/"

  livecheck do
    url "https://teenyshelf.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyShelf.app"

  zap trash: [
    "~/Library/Application Support/TeenyShelf",
    "~/Library/Caches/com.teenyapps.TeenyShelf",
    "~/Library/HTTPStorages/com.teenyapps.TeenyShelf",
    "~/Library/Preferences/com.teenyapps.TeenyShelf.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyShelf.savedState",
  ]
end
