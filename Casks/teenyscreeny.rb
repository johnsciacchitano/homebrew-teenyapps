cask "teenyscreeny" do
  version "1.0.1"
  sha256 "c77a2472cdb14b9698fb5fab642b564b29d050bdd03ad38864e9ed710cf07d7d"

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
