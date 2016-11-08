cask 'quicktime7' do
  version '7.6.6'
  sha256 '954c2376d2d747821614dc802249cf3c708a4792abed08945d7261de3894e759'

  url "https://support.apple.com/downloads/DL923/en_US/QuickTimePlayer#{version}_SnowLeopard.dmg"
  name 'QuickTime Player 7'
  homepage 'https://support.apple.com/kb/dl923?locale=en_US'

  depends_on macos: '>= :snow_leopard'

  pkg "QuickTimePlayer#{version}_SnowLeopard.pkg"

  uninstall pkgutil: 'com.apple.pkg.QuickTimePlayer7.6.6_SnowLeopard',
            quit:    'com.apple.quicktimeplayer'

  zap delete: [
                '~/Library/Preferences/com.apple.quicktimeplayer.plist',
                '~/Library/Preferences/QuickTime Preferences',
                '~/Library/Caches/QuickTime',
              ]
end
