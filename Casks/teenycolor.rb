cask "teenycolor" do
  version "1.0.0"
  sha256 "c358b470bef3086f2b044afdbd24841f8423ad032ea9e12c00ff5ac31639cf12"

  url "https://teenycolor.com/downloads/TeenyColor-#{version}.dmg"
  name "TeenyColor"
  desc "Colour picker and palette manager"
  homepage "https://teenycolor.com/"

  livecheck do
    url "https://teenycolor.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyColor.app"

  zap trash: [
    "~/Library/Application Support/TeenyColor",
    "~/Library/Caches/com.teenyapps.TeenyColor",
    "~/Library/HTTPStorages/com.teenyapps.TeenyColor",
    "~/Library/Preferences/com.teenyapps.TeenyColor.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyColor.savedState",
  ]
end
