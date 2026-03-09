cask "warden" do
  version "1.2.5"
  sha256 "59265da90b7c779054de1e1ff0e431da5d70b7bf3595b2aa62bebc7048d28854"

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
