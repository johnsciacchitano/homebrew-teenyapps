cask "teenyclip" do
  version "1.0.3"
  sha256 "c1430375dc5f10e66e80c3b50dd92a8fb44bb6f76137a0954ac1fc6d61afdb91"

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
