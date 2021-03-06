cask "mubu" do
  version "3.2.0"
  sha256 "77ceb25b76a80a5c4ba287a42e61a40669e86919cd8a740ced4d54df20c7c524"

  url "https://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg",
      verified: "lf6-ttcdn-tos.pstatp.com/obj/mubu-img/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://mubu.com/apps"
    strategy :page_match
    regex(/Mubu-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end
