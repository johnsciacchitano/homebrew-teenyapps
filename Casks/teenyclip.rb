cask "teenyclip" do
  version "1.0.4"
  sha256 "c1a6b91a1534b23211fdcd362adce3c369bfcfe813083d78a8fc14d6c6e6b05c"

  url "https://teenyclip.com/downloads/TeenyClip-#{version.csv.first}.dmg"
  name "TeenyClip"
  desc "Clipboard history for your menu bar"
  homepage "https://teenyclip.com/"

  livecheck do
    url "https://teenyclip.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TeenyClip.app"

  zap trash: "~/Library/Application Support/com.teenyapps.TeenyClip"
end
