cask "warden" do
  version "3.0.2"
  sha256 "89e1186dbe74e0eab883c0d64c6edf7f1b25ab62a71998d244ce977cbc567c10"

  url "https://download.getwarden.org/Warden-#{version}.dmg"
  name "Warden"
  desc "Menu bar screen locking utility"
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
