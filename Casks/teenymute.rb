cask "teenymute" do
  version "1.0.0"
  sha256 "d3f38b62ddc15db1e332183b67aeebc477f99acdac3406ff455ed6086ee2209c"

  url "https://teenymute.com/downloads/TeenyMute-#{version}.dmg"
  name "TeenyMute"
  desc "Menu bar mic and audio mute toggle"
  homepage "https://teenymute.com/"

  livecheck do
    url "https://teenymute.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyMute.app"

  zap trash: [
    "~/Library/Application Support/TeenyMute",
    "~/Library/Caches/com.teenyapps.TeenyMute",
    "~/Library/HTTPStorages/com.teenyapps.TeenyMute",
    "~/Library/Preferences/com.teenyapps.TeenyMute.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyMute.savedState",
  ]
end
