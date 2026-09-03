cask "warden" do
  version "3.0.4"
  sha256 "1a7e900b5b50f69ae8d5ad2fd3357867bede37d5ff5074647a270bef07f87369"

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
