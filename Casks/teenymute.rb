cask "teenymute" do
  version "1.0.1,2"
  sha256 "8d564f0571866cd4ef12efd0494db16c102baab4fa9a5fc0ea56e24b7b44bb88"

  url "https://teenymute.com/downloads/TeenyMute-#{version.csv.first}.dmg"
  name "TeenyMute"
  desc "Menu bar microphone mute and push-to-talk control"
  homepage "https://teenymute.com/"

  livecheck do
    url "https://teenymute.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyMute.app"

  zap trash: [
    "~/Library/Caches/com.teenyapps.TeenyMute",
    "~/Library/HTTPStorages/com.teenyapps.TeenyMute",
    "~/Library/Preferences/com.teenyapps.TeenyMute.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyMute.savedState",
  ]
end
