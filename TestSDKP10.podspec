Pod::Spec.new do |s|
  s.name             = 'TestSDKP10'
  s.version          = '0.0.6'
  s.summary          = 'test sdk p10'

  s.homepage         = 'https://github.com/Papilon-Savunma/TestSDKP10'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '' => '' }
  s.source = { :git => 'https://github.com/Papilon-Savunma/TestSDKP10.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'

  s.vendored_frameworks = 'TacirlerSDK.xcframework'
  s.static_framework = true

  s.requires_arc = true
  
  s.frameworks = 'UIKit', 'AVFoundation'
  s.dependency 'SwiftyJSON'
  s.dependency "OpenSSL-Universal", '1.1.180'
  s.dependency 'BulletinBoard'
  s.dependency 'JitsiMeetSDK', '~> 5.0.0'
  s.dependency 'Socket.IO-Client-Swift'
  s.dependency 'Starscream'
end
