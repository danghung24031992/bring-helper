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
  s.source       = { :git => "https://github.com/danghung24031992/bring-helper.git", :tag => s.version }
  s.source_files  =  "RNBringHelper/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"

end

  