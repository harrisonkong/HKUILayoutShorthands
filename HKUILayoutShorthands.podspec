# Podspec for HKUILayoutShorthands
#   Created by Harrison Kong on 2020/01/16.
#   Updated to 1.0.1         on 2020/01/31.

Pod::Spec.new do |s|

  platform                = :ios
  s.ios.deployment_target = '11.0'

  s.name          = 'HKUILayoutShorthands'
  s.summary       = 'Shorthand methods for Swift programmatic UI layout constraints'
  s.requires_arc  = true
  s.version       = '1.0.1'
  s.license       = { :type => 'MIT' }
  s.author        = { 'Harrison Kong' => 'harrisonkong@skyroute66.com' }
  s.homepage      = 'https://github.com/harrisonkong/HKUILayoutShorthands'
  s.source        = { :git => 'https://github.com/harrisonkong/HKUILayoutShorthands.git',
                      :tag => '1.0.1' }
  s.framework     = 'UIKit'
  s.source_files  = 'HKUILayoutShorthands/**/*.swift'
  s.swift_version = '4.0'

end
