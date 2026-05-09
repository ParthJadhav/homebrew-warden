cask "warden" do
  version :latest
  sha256 :no_check

  url "https://download.getwarden.org/Warden-latest.dmg"
  name "Warden"
  desc "Menu bar screen locking utility"
  homepage "https://www.getwarden.org/"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/com.pjadhav.Warden",
    "~/Library/Caches/com.pjadhav.Warden",
    "~/Library/Preferences/com.pjadhav.Warden.plist",
  ]
end
