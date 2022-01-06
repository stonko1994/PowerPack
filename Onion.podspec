Pod::Spec.new do |s|
  s.name         = "Onion"
  s.version      = "0.0.1"
  s.summary      = "Collection of useful Swift and iOS related components/extensions I use in my own apps"

  s.description  = <<-DESC
  Collection of useful Swift and iOS related components/extensions I use in my own apps
                DESC

  s.homepage     = "https://github.com/stonko1994/onion"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "David Steinacher" => "david_steinacher@hotmail.com" }
  s.social_media_url   = "http://twitter.com/stonko1994"
  s.ios.deployment_target = "13.0"
  s.source       = { :git => "https://github.com/stonko1994/CoreRecord.git", :tag => "v#{s.version}" }

  s.subspec 'SwiftUI' do |ss|
    ss.subspec 'FillSpace' do |sss|
      sss.source_files  = "Sources/View+FillSpace/**/*.{swift}"
    end

    ss.subspec 'PushBackButtonStyle' do |sss|
      sss.source_files  = "Sources/PushBackButtonStyle/**/*.{swift}"
    end
  end

  s.subspec 'Swift' do |ss|
    ss.subspec 'Int+Times' do |sss|
      sss.source_files  = "Sources/Int+Times/**/*.{swift}"
    end
  end
end
