cask "warden" do
  version "3.0.1"
  sha256 "9bf64a1938154a9e63d630e5d651cb3c65f9ca73857d7c27aca239aee263091b"

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
