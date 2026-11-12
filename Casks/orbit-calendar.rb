cask "orbit-calendar" do
  version "1.1.7"
  sha256 "884b1176ce7ce0fff7602a27487c4c53dd8aa92b0486bda1fec86b1ea9be1345"

  url "https://github.com/janakjobanputra/orbit/releases/download/v#{version}/Orbit-v#{version}.dmg"
  name "Orbit"
  desc "Calendar in the menu bar"
  homepage "https://try-orbit.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Orbit.app"

  zap trash: [
    "~/Library/Application Scripts/com.janakjobanputra.Orbit",
    "~/Library/Containers/com.janakjobanputra.Orbit",
  ]
end
