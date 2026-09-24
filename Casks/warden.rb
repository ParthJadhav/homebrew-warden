cask "warden" do
  version "3.1.2"
  sha256 "dfe1dfcea107e5f119d2e24fbdce146e978cafa5d62c3de5dad45ace201a48d0"

  url "https://download.getwarden.org/Warden-#{version}.dmg"
  name "Warden"
  desc "Lock keyboard, mouse and trackpad input while the screen stays visible"
  homepage "https://www.getwarden.org/"

  livecheck do
    skip "Warden releases are published through the appcast and Homebrew tap update workflow."
  end

  auto_updates true
  # Symbol form means "this release or newer"; the ">= :sequoia"
  # string form is deprecated in Homebrew 6 and warns on every
  # install, becoming an error in a future release.
  depends_on macos: :sequoia

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/com.pjadhav.Warden",
    "~/Library/Caches/com.pjadhav.Warden",
    "~/Library/Preferences/com.pjadhav.Warden.plist",
  ]
end
