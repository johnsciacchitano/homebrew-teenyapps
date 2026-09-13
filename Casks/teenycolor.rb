cask "teenycolor" do
  version "1.0.1,2"
  sha256 "7d19f9d04066703510a97de442d1f17275a4d68525dca70eed1d991032ea1395"

  url "https://teenycolor.com/downloads/TeenyColor-#{version.csv.first}.dmg"
  name "TeenyColor"
  desc "Colour picker and palette manager"
  homepage "https://teenycolor.com/"

  livecheck do
    url "https://teenycolor.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyColor.app"

  zap trash: [
    "~/Library/Application Support/com.teenyapps.TeenyColor",
    "~/Library/Caches/com.teenyapps.TeenyColor",
    "~/Library/HTTPStorages/com.teenyapps.TeenyColor",
    "~/Library/Preferences/com.teenyapps.TeenyColor.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyColor.savedState",
  ]
end
