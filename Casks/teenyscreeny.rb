cask "teenyscreeny" do
  version "1.0.0"
  sha256 "2e95587163ea6ebdcc8a2fd8f02f40e1ab8c73906789e5e3bfe57e2315890581"

  url "https://teenyscreeny.com/downloads/TeenyScreeny-#{version}.dmg"
  name "TeenyScreeny"
  desc "Lightweight screenshot and capture utility"
  homepage "https://teenyscreeny.com/"

  livecheck do
    url "https://teenyscreeny.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyScreeny.app"

  zap trash: [
    "~/Library/Application Support/TeenyScreeny",
    "~/Library/Caches/com.teenyapps.TeenyScreeny",
    "~/Library/HTTPStorages/com.teenyapps.TeenyScreeny",
    "~/Library/Preferences/com.teenyapps.TeenyScreeny.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyScreeny.savedState",
  ]
end
