cask "orbit-calendar" do
  version "1.0.0"
  sha256 "cf4b47a6a11be7880e9b93808692cc6ba64a802a87a4210805c0518aac8b101c"

  url "https://github.com/janakjobanputra/orbit/releases/download/v#{version}/Orbit-#{version}.dmg"
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
