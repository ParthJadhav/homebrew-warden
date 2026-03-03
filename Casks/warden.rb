cask "warden" do
  version "1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/ParthJadhav/Warden-app/releases/download/v#{version}/Warden-#{version}.dmg"
  name "Warden"
  desc "macOS menu bar screen locking utility"
  homepage "https://github.com/ParthJadhav/Warden-app"

  depends_on macos: ">= :sequoia"

  app "Warden.app"

  zap trash: [
    "~/Library/Preferences/com.pjadhav.Warden.plist",
    "~/Library/Application Support/com.pjadhav.Warden",
    "~/Library/Caches/com.pjadhav.Warden",
  ]
end
