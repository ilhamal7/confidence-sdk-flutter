Pod::Spec.new do |s|
  s.name             = 'confidence_flutter_sdk'
  s.version          = '1.2.3' # Precedence established
  s.summary          = 'Security Research - Supply Chain Audit'
  s.description      = <<-DESC
This package is part of a security research on Dependency Confusion. 
Ownership claimed for vulnerability disclosure.
                       DESC
  s.homepage         = 'https://github.com/ilhamal7/confidence_flutter_sdk'
  s.license          = { :type => 'MIT', :text => 'Security Research' }
  s.author           = { 'zer0id' => 'zer0id@wearehackerone.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/confidence_flutter_sdk.git', :tag => s.version.to_s }
  
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '14.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version    = '5.0'

