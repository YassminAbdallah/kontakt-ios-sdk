Pod::Spec.new do |s|
  s.name                    = "KontaktSDK"
  s.version                 = "3.0.27"
  s.license                 = { :type => 'CC-ND', :file => 'LICENSE' }
  s.summary                 = "Kontakt.io SDK for iOS"
  s.homepage                = "http://kontakt.io"
  s.author                  = { "Kontakt.io" => "ios@kontakt.io" }

  s.module_name             = 'KontaktSDK'

  s.ios.deployment_target   = '9.0'
  # s.osx.deployment_target   = '10.9'
  # s.tvos.deployment_target  = '9.0'

  s.ios.frameworks          = "UIKit", "Foundation", "SystemConfiguration", "MobileCoreServices", "CoreLocation", "CoreBluetooth"
  # s.tvos.frameworks         = "UIKit", "Foundation", "SystemConfiguration", "MobileCoreServices", "CoreLocation", "CoreBluetooth"
  # s.osx.frameworks          = "AppKit", "Foundation", "SystemConfiguration", "CoreServices", "CoreBluetooth"

  #s.source = {
 #   :http    => "http://omg.kontakt.io.s3.amazonaws.com/ios/builds/kontakt-ios-sdk-#{s.version.to_s}.zip",
 #   :flatten => true
 # }
   s.source = { :git => 'https://github.com/YassminAbdallah/kontakt-ios-sdk.git', :tag => "#{s.version}" }

   s.ios.vendored_frameworks = "KontaktSDK/iOS/KontaktSDK.xcframework"

  # s.tvos.vendored_frameworks = "Cocoapods/tvOS/KontaktSDK.framework"

  # s.osx.vendored_frameworks = "Cocoapods/OSX/KontaktSDK.framework"

  s.requires_arc  = true
end
