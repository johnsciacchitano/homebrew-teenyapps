cask "teenyclip" do
  version "1.0.1"
  sha256 "6b5dd518c99ebc15f1de970a97f5f6583c3ac2a6252ff4172da2f9f7a9cf6766"

  url "https://teenyclip.com/downloads/TeenyClip-#{version.csv.first}.dmg"
  name "TeenyClip"
  desc "Clipboard history for your menu bar"
  homepage "https://teenyclip.com/"

  livecheck do
    url "https://teenyclip.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyClip.app"

  zap trash: "~/Library/Application Support/com.teenyapps.TeenyClip"
end
