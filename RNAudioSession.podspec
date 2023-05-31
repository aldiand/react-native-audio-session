require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNAudioSession'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "13.0"

  s.source       = { :git => "https://github.com/aldiand/react-native-audio-session.git" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React-Core'
end