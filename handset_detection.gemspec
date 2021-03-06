Gem::Specification.new do |s|
  s.name        = 'handset_detection'
  s.version     = '4.1.6'
  s.date        = '2016-12-04'
  s.summary     = 'API kit for HandsetDetection.com'
  s.description = 'Use the HandsetDetection.com API from Ruby.'
  s.authors     = ['Handset Detection']
  s.email       = 'hello@handsetdetection.com'
  s.files       = ['lib/handset_detection.rb'] + Dir['lib/handset_detection/*'] + Dir['lib/handset_detection/cache/*'] + Dir['lib/handset_detection/vendor/*']
  s.homepage    = 'https://github.com/HandsetDetection/ruby-apikit/'
  s.license     = 'MIT'

  s.add_runtime_dependency 'dalli', '~>2.7'
  s.add_runtime_dependency 'rubyzip'
end
