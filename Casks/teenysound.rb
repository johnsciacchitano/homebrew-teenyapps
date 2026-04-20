cask "teenysound" do
  version "1.0.0"
  sha256 "970123a09c48e3d129e85c9bb5faec37ae7ea1f501b5f97f52f9f666644047e3"

  url "https://teenysound.com/downloads/TeenySound-#{version}.dmg"
  name "TeenySound"
  desc "Per-app audio routing and volume control"
  homepage "https://teenysound.com/"

  livecheck do
    url "https://teenysound.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenySound.app"

  zap trash: [
    "~/Library/Application Support/TeenySound",
    "~/Library/Caches/com.teenyapps.TeenySound",
    "~/Library/HTTPStorages/com.teenyapps.TeenySound",
    "~/Library/Preferences/com.teenyapps.TeenySound.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenySound.savedState",
  ]
end
