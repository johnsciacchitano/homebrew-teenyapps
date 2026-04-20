cask "teenyapps" do
  version :latest
  sha256 :no_check

  url "https://teenyapps.com"
  name "TeenyApps"
  desc "Complete collection of Teeny menu bar utilities"
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

  # Meta-cask: no artifact of its own, it just pulls in the nine apps above.
  stage_only true
end
