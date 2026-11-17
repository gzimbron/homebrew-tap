# Homebrew cask for Manita. Copy to Casks/manita.rb in the github.com/gzimbron/homebrew-tap repo.
# Users install with: brew install --cask gzimbron/tap/manita
cask "manita" do
  version "1.1.1" # x-release-please-version
  sha256 "8af2a5d3cd9b86ce8fb4deba616fb5c3678454c4500f9293f1ea2eb7f4e36aba"

  url "https://github.com/gzimbron/manita/releases/download/v#{version}/Manita-#{version}.zip"
  name "Manita"
  desc "Cartoon hand pointer with click effects and presentation mode"
  homepage "https://github.com/gzimbron/manita"

  depends_on macos: :tahoe

  app "Manita.app"

  uninstall quit: "dev.gzimbron.manita"

  zap trash: [
    "~/Library/Application Support/Manita",
    "~/Library/Preferences/dev.gzimbron.manita.plist",
  ]
end
