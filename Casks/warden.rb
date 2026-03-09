cask "warden" do
  version "1.2.4"
  sha256 "67060d9b623c391d72336c94f8cbece12a32dd9da552033d7237fbfe3beab049"

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
