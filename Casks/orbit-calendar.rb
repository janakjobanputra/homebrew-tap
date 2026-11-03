cask "orbit-calendar" do
  version "1.1.2"
  sha256 "f030819ccdecc50a92e37cfbb3fdbfa62362d4bcb96308cb686fee95512cfa41"

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
