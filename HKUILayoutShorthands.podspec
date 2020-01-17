# Podspec for HKUILayoutShorthands
#   Created by Harrison Kong on 2020/01/16.

Pod::Spec.new do |s|

  platform                = :ios
  s.ios.deployment_target = '11.0'

  s.name          = 'HKUILayoutShorthands'
  s.summary       = 'Programmatic shorthand methods for Swift UI layout constraints'
  s.requires_arc  = true
  s.version       = '1.0.0'
  s.license       = { :type => 'MIT' }
  s.author        = { 'Harrison Kong' => 'harrisonkong@skyroute66.com' }
  s.homepage      = 'https://www.skyroute66.com'
  s.source        = { :git => 'https://github.com/harrisonkong/HKUILayoutShorthands.git',
                      :tag => '1.0.0' }
  s.framework     = 'UIKit'
  s.source_files  = 'HKUILayoutShorthands/**/*.swift'
  s.swift_version = '4.0'

end
