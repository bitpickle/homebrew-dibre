cask "dibre" do
  version "1.0.3"

  sha256 "67c46677d956b23e9c1da9c0918db398402f7046e3262c205391bec10eb6f194"

  url "https://github.com/bitpickle/homebrew-dibre/releases/download/v#{version}/Dibre_#{version}_aarch64.dmg"

  name "Dibre"
  desc "Modern and dynamic database client"
  homepage "https://github.com/bitpickle/dibre"

  app "Dibre.app"

  zap trash: [
    "~/Library/Application Support/dev.bitpickle.dibre",
    "~/Library/Preferences/dev.bitpickle.dibre.plist",
    "~/Library/Saved Application State/dev.bitpickle.dibre.savedState",
    "~/Library/Caches/dev.bitpickle.dibre"
  ]
end
