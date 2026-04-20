cask "teenyapps" do
  version :latest
  sha256 :no_check

  url "https://teenyapps.com"
  name "TeenyApps"
  desc "Complete  suite"
  homepage "https://teenyapps.com/"

  depends_on cask: %w[
    teenyclip
    teenycolor
    teenydisplay
    teenymute
    teenyscreeny
    teenyshelf
    teenysound
    teenystat
    teenytool
  ]
end
