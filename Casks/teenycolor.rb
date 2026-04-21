cask "teenycolor" do
  version "1.0.0"
  sha256 "8723563c209b5ee83b236a12088dfaa000cd109318ca2c7e66c0bff9937c7114"

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
