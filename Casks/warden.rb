cask "warden" do
  version "2.2.0"
  sha256 "81637b42f6c1c1e62e650184d267eed24d0ce7bf743908c47704ea64aaa80a8a"

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
