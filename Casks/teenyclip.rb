cask "teenyclip" do
  version "1.0.2,3"
  sha256 "9dbf64ea9e880feeac7949963d3b20ff59f97303cd05a13f43341004b00be34b"

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
