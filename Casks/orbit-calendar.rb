cask "orbit-calendar" do
  version "1.1.1"
  sha256 "044d68a8f9d143b9c2dc108051e74692491b991fd87c926fe8362e93da7712bb"

  url "https://github.com/janakjobanputra/orbit/releases/download/v#{version}/Orbit-v#{version}.dmg"
  name "Orbit"
  desc "Calendar in the menu bar"
  homepage "https://try-orbit.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Orbit.app"

  zap trash: [
    "~/Library/Application Scripts/com.janakjobanputra.Orbit",
    "~/Library/Containers/com.janakjobanputra.Orbit",
  ]
end
