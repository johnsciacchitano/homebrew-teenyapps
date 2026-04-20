cask "teenystat" do
  version "1.0.0"
  sha256 "6297e9286cd35104727131f443954a960c4cf9fe4a9f9cc563b0148fbf0bb0e6"

  url "https://teenystat.com/downloads/TeenyStat-#{version}.dmg"
  name "TeenyStat"
  desc "System stats in your menu bar"
  homepage "https://teenystat.com/"

  livecheck do
    url "https://teenystat.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyStat.app"

  zap trash: [
    "~/Library/Application Support/TeenyStat",
    "~/Library/Caches/com.teenyapps.TeenyStat",
    "~/Library/HTTPStorages/com.teenyapps.TeenyStat",
    "~/Library/Preferences/com.teenyapps.TeenyStat.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyStat.savedState",
  ]
end
