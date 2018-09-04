require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => "#{package['repository']['url']}.git"}
  s.source_files = 'ios/RNTextInputMask/**/*.{swift,h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.dependency 'React'
end