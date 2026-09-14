cask "teenycolor" do
  version "1.0.2"
  sha256 "be84bc9f7496d7a2230c18f45e7918b1d1c83d5a51107ef08252a5cd8a7c8285"

  url "https://teenycolor.com/downloads/TeenyColor-#{version.csv.first}.dmg"
  name "TeenyColor"
  desc "Colour picker and palette manager"
  homepage "https://teenycolor.com/"

  livecheck do
    url "https://teenycolor.com/appcast.xml"
    strategy :sparkle, &:short_version
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
