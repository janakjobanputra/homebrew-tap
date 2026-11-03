cask "orbit-calendar" do
  version "1.1.0"
  sha256 "a17655b8f11d1c0847591568b41a452e4fee82940f6be9ed5bd7ec0ef9a8af3e"

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
