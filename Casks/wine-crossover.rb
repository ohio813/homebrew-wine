cask "wine-crossover" do
  version "22.1.1"
  sha256 "a525f0b44ffe7375c701813d2492d41763ee1570e9abf00bc17b286222dc77ee"

  url "https://github.com/Gcenx/winecx/releases/download/crossover-wine-#{version}/wine-crossover-#{version}-osx64.tar.xz"
  name "Wine Crossover"
  desc "Compatibility layer to run Windows applications"
  homepage "https://github.com/Gcenx/homebrew-wine/"

  conflicts_with formula: "wine",
                 cask:    %w[
                   wine-stable
                   wine-stable-legacy
                   wine-devel
                   wine-staging
                 ]
  depends_on macos: ">= :catalina"

  app "Wine Crossover.app"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/start/bin/appdb"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/start/bin/winehelp"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/msiexec"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/notepad"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/regedit"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/regsvr32"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wine"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wine-preloader"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wine64"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wine64-preloader"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wineboot"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/winecfg"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wineconsole"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/winedbg"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/winefile"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/winemine"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/winepath"
  binary "#{appdir}/Wine Crossover.app/Contents/Resources/wine/bin/wineserver"

  caveats <<~EOS
    #{token} supports running 32-bit & 64-bit windows binaries.

    #{token} does not support creating a 32-bit wine prefix.
  EOS
  caveats <<~EOS
    To enable noflicker set the following registry key in your prefix:
    [HKCU\\Software\\Wine\\Mac Driver]
    "ForceOpenGLBackingStore"="y"
  EOS
end
