cask "mellel" do
  version "6.0.6,60607"
  sha256 "21950b38035c94703dbe00968440162845225ec6c36471c7f04e2ade0073175c"

  url "https://d1riogbqt3a9uw.cloudfront.net/mellel_#{version.csv.second}.dmg",
      verified: "d1riogbqt3a9uw.cloudfront.net/"
  name "Mellel"
  desc "Advanced word processor built for long and complex documents"
  homepage "https://www.mellel.com/"

  livecheck do
    url "http://www.mellelupdate.com/mellelupdate/latest_update.xml"
    regex(%r{<full-version>v?(\d+(?:\.\d{1,2})+)(?:\.(\d{3,}))?</full-version>}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  auto_updates true

  app "Mellel #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.redlex.mellel",
    "~/Library/Application Support/com.redlex.mellel#{version.major}",
    "~/Library/Application Support/Mellel #{version.major}",
    "~/Library/Caches/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}",
    "~/Library/HTTPStorages/com.redlex.mellel#{version.major}.binarycookies",
    "~/Library/Preferences/com.redlex.mellel#{version.major}.plist",
    "~/Library/Saved Application State/com.redlex.mellel#{version.major}.savedState",
    "~/Library/Saved Application State/com.redlex.MellelUpdater.savedState",
  ]
end
