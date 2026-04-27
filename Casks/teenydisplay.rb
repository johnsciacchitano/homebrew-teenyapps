cask "teenydisplay" do
  version "1.0.0"
  sha256 "85883f8c7b47131d202b15b822f2e721057549eb90458b9d4900cb1dcbe5a377"

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
