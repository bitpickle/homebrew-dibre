cask "dibre" do
  version "1.1.4"

  sha256 "c83b5d1e903ab2d164100c15c24476c68358fbbe0644576c909858eb935f4b13"

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
