cask "warden" do
  version "1.2.6"
  sha256 "e0dde08bbbd6963c0d079e04ce5a4aa3dd79fb7ce7fb30e209623ae15854a0ec"

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
