cask "warden" do
  version "1.2.3"
  sha256 "1048dcdfecee574d57f801fec69e08812290d9ff9e58fd1738ed6180aa0df944"

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
