cask "warden" do
  version "2.0.0"
  sha256 "0d4da9a381d1260d363656c46c9db9bfdecdb7557f00c6742c37babaeef8e849"

  url "https://download.getwarden.org/Warden-#{version}.dmg"
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
