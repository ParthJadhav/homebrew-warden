cask "warden" do
  version :latest
  sha256 :no_check

  url "https://download.getwarden.org/Warden-latest.dmg"
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
