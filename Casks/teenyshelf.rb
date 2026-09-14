cask "teenyshelf" do
  version "1.0.2"
  sha256 "a43a8ba6805ffee878d76281bc4c9b76c86ab71abdb3fb12167c6a2660f5cc42"

  url "https://teenyshelf.com/downloads/TeenyShelf-#{version.csv.first}.dmg"
  name "TeenyShelf"
  desc "Drag-and-drop file shelf for the menu bar"
  homepage "https://teenyshelf.com/"

  livecheck do
    url "https://teenyshelf.com/appcast.xml"
    strategy :sparkle, &:short_version
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
