Pod::Spec.new do |s|
  s.name             = 'confidence_sdk_flutter'
  s.version          = '1.2.3'
  s.summary          = 'Security Research - Supply Chain Audit'
  s.description      = 'This package is part of a security research on Dependency Confusion. Ownership claimed for vulnerability disclosure.'
  s.homepage         = 'https://github.com/ilhamal7/confidence_sdk_flutter'
  s.license          = { :type => 'MIT', :text => 'Security Research' }
  s.author           = { 'zer0id' => 'zer0id@wearehackerone.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/confidence_sdk_flutter.git', :tag => s.version.to_s }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '14.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version    = '5.0'
end
