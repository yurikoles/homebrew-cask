cask "font-sketchybar-app-font" do
  version "2.0.28"
  sha256 "e49ee3281aca67634c2e7c0261d898226149664e9842b7fe61af8c4726d1f1de"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  desc "Contains many useful app icons used by Sketchybar"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
