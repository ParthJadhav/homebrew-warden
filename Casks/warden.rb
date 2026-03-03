cask "warden" do
  version "1.2.1"
  sha256 "ae39e13f98358b2bd3050919025cb7a1a4b83a26a5f1ac9c8cb79dcd52072285"

  url "https://download.getwarden.org/Warden.dmg"
  name "Warden"
  desc "macOS menu bar screen locking utility"
  homepage "https://www.getwarden.org"

  depends_on macos: ">= :sequoia"

  app "Warden.app"

  zap trash: [
    "~/Library/Preferences/com.pjadhav.Warden.plist",
    "~/Library/Application Support/com.pjadhav.Warden",
    "~/Library/Caches/com.pjadhav.Warden",
  ]
end
