cask "orbit-calendar" do
  version "1.1.4"
  sha256 "60b16995043af150a2b75d905250cb3135e0cada53c339841c5960a330d5de64"

  url "https://github.com/janakjobanputra/orbit/releases/download/v#{version}/Orbit-v#{version}.dmg"
  name "Orbit"
  desc "Calendar in the menu bar"
  homepage "https://try-orbit.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Orbit.app"

  zap trash: [
    "~/Library/Application Scripts/com.janakjobanputra.Orbit",
    "~/Library/Containers/com.janakjobanputra.Orbit",
  ]
end
