require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'ffi-win32-extensions'
  spec.version    = '1.0.2'
  spec.authors    = 'Daniel J. Berger'
  spec.license    = 'Apache 2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/ffi-win32-extensions'
  spec.summary    = 'Extends the FFI and String classes on MS Windows'
  spec.test_files = Dir['test/test*']
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }
  spec.cert_chain = ['certs/djberg96_pub.pem']

  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_dependency('ffi')
  spec.add_development_dependency('test-unit')

  spec.description = <<-EOF
    The ffi-win32-extensions library adds additional methods to the FFI
    and String classes to aid in the development of FFI based libraries
    on MS Windows.
  EOF
end
