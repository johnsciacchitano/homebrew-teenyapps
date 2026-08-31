cask "teenyscreeny" do
  version "1.0.2"
  sha256 "24a0aece4bd2e568a77530c360e216cc977f2a36f438dcab00076efebd35085f"

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
