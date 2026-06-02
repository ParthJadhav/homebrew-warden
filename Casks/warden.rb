cask "warden" do
  version "2.2.2"
  sha256 "97e0fed9f73f01363d38f9e13228ae7de6d694840f77a1a31114d3fde9cd2a8e"

  url "https://download.getwarden.org/Warden-#{version}.dmg"
  name "Warden"
  desc "Menu bar screen locking utility"
  homepage "https://www.getwarden.org/"

  livecheck do
    skip "Warden releases are published through the appcast and Homebrew tap update workflow."
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/com.pjadhav.Warden",
    "~/Library/Caches/com.pjadhav.Warden",
    "~/Library/Preferences/com.pjadhav.Warden.plist",
  ]
end
