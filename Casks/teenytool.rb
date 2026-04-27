cask "teenytool" do
  version "1.0.0"
  sha256 "e724b22b34e0cc47710a98da6bdc16aa6260d267c20ce394d001608c487753d2"

  url "https://teenytool.com/downloads/TeenyTool-#{version}.dmg"
  name "TeenyTool"
  desc "Multi-tool utility for the menu bar"
  homepage "https://teenytool.com/"

  livecheck do
    url "https://teenytool.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "TeenyTool.app"

  zap trash: [
    "~/Library/Application Support/TeenyTool",
    "~/Library/Caches/com.teenyapps.TeenyTool",
    "~/Library/HTTPStorages/com.teenyapps.TeenyTool",
    "~/Library/Preferences/com.teenyapps.TeenyTool.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyTool.savedState",
  ]
end
