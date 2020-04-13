Pod::Spec.new do |s|
  s.name         = "RNBringHelper"
  s.version      = "1.0.0"
  s.summary      = "RNBringHelper"
  s.description  = <<-DESC
                  RNBringHelper
                   DESC
  s.homepage     = "Dang hung"
  s.license      = "MIT"
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source = { :path => 'file:' + __dir__ + '/' }
  # s.source = {: path => '~/Users/danghung/Desktop/SourceCode/doctor/libs/RNBringHelper'}
  s.source_files  =  "RNBringHelper/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"

end

  