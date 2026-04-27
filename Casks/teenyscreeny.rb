cask "teenyscreeny" do
  version "1.0.0"
  sha256 "e23cadc5ab3f72b66c9aba763030e5d9a9958dfb315a4a5c61383df5cfbe2916"

  url "https://teenyscreeny.com/downloads/TeenyScreeny-#{version}.dmg"
  name "TeenyScreeny"
  desc "Lightweight screenshot and capture utility"
  homepage "https://teenyscreeny.com/"

  livecheck do
    url "https://teenyscreeny.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TeenyScreeny.app"

  zap trash: [
    "~/Library/Application Support/TeenyScreeny",
    "~/Library/Caches/com.teenyapps.TeenyScreeny",
    "~/Library/HTTPStorages/com.teenyapps.TeenyScreeny",
    "~/Library/Preferences/com.teenyapps.TeenyScreeny.plist",
    "~/Library/Saved Application State/com.teenyapps.TeenyScreeny.savedState",
  ]
end
