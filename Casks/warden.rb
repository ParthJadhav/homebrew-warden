cask "warden" do
  version "3.0.5"
  sha256 "1031ef8fa82787ce216e76f43cd51a0e894f11fe033725c13fc285f33f81fb0c"

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
