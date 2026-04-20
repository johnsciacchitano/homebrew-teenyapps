cask "teenydisplay" do
  version "1.0.0"
  sha256 "28ee2395e1f8d9ffd4540f6f3850b9bccf9a4a6fa1be65875888fd88ff8bf0a4"

  url "https://teenydisplay.com/downloads/TeenyDisplay-#{version}.dmg"
  name "TeenyDisplay"
  desc "Quick display resolution and arrangement switcher"
  homepage "https://teenydisplay.com/"

  livecheck do
    url "https://teenydisplay.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyDisplay.app"

  zap trash: [
    "~/Library/Application Support/TeenyDisplay",
    "~/Library/Caches/com.teenyapps.TeenyDisplay",
    "~/Library/HTTPStorages/com.teenyapps.TeenyDisplay",
    "~/Library/Preferences/com.teenyapps.TeenyDisplay.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyDisplay.savedState",
  ]
end
