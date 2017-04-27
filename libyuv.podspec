Pod::Spec.new do |s|
  s.name         = "libyuv"
  s.version      = "1638"
  s.summary      = "This fork provides simple way to build iOS version of the library."
  s.homepage     = "https://github.com/yarrcc/libyuv-ios"
  s.author       = { "heartherlin" => "abc@somewhere" } # Podspec maintainer
  s.license      = { :type => 'BSD3', :file => 'LICENSE' }
  s.requires_arc = false
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/hearther/libyuv-ios.git"}

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
	ss.source_files        = 'include/**/*.h', 'include/*.h'
    ss.public_header_files = 'include/**/*.h', 'include/*.h'
    ss.header_mappings_dir = 'include'
    ss.vendored_libraries  = 'build/libyuv.a'
    ss.libraries = 'yuv'
  end

end
