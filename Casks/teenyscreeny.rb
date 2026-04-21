cask "teenyscreeny" do
  version "1.0.0"
  sha256 "3ba1d0e13d714ff2c58bd48522972360424fcc079f2370a1da9d8a9cf0cf045d"

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
