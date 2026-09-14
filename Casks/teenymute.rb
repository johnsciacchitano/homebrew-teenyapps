cask "teenymute" do
  version "1.0.2"
  sha256 "b3a9e0e58b7afdb991c2889ec29dba53f698285e2398964ca4cd74d306a166ee"

  url "https://teenymute.com/downloads/TeenyMute-#{version.csv.first}.dmg"
  name "TeenyMute"
  desc "Menu bar microphone mute and push-to-talk control"
  homepage "https://teenymute.com/"

  livecheck do
    url "https://teenymute.com/appcast.xml"
    strategy :sparkle, &:short_version
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
