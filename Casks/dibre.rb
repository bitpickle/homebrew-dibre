cask "dibre" do
  version "1.1.1"

  sha256 "4bc8613db1ad2b02d16aa468aab3649b28e6e59be566b26e0523a700955f4669"

  url "https://github.com/bitpickle/homebrew-dibre/releases/download/v#{version}/Dibre_#{version}_aarch64.dmg"

  name "Dibre"
  desc "Modern and dynamic database client"
  homepage "https://github.com/bitpickle/dibre"

  app "Dibre.app"

  postflight do
    app_path = appdir/"Dibre.app"
    next unless app_path.exist?

    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", app_path]
  end

  zap trash: [
    "~/Library/Application Support/dev.bitpickle.dibre",
    "~/Library/Preferences/dev.bitpickle.dibre.plist",
    "~/Library/Saved Application State/dev.bitpickle.dibre.savedState",
    "~/Library/Caches/dev.bitpickle.dibre"
  ]
end
