cask "teenyshelf" do
  version "1.0.1,2"
  sha256 "7dad6257823e8c53b834231085dcdc65d3b00b5c04c01815fbe7f6678a763095"

  url "https://teenyshelf.com/downloads/TeenyShelf-#{version.csv.first}.dmg"
  name "TeenyShelf"
  desc "Drag-and-drop file shelf for the menu bar"
  homepage "https://teenyshelf.com/"

  livecheck do
    url "https://teenyshelf.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyShelf.app"

  zap trash: [
    "~/Library/Application Support/com.teenyapps.TeenyShelf",
    "~/Library/Application Support/TeenyShelf",
    "~/Library/Caches/com.teenyapps.TeenyShelf",
    "~/Library/HTTPStorages/com.teenyapps.TeenyShelf",
    "~/Library/Preferences/com.teenyapps.TeenyShelf.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyShelf.savedState",
  ]
end
