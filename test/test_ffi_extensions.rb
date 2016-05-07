require 'ffi-win32-extensions'
require 'test-unit'

class TC_FFI_Win32_Extensions < Test::Unit::TestCase
  def setup
    @ptr = FFI::MemoryPointer.new(:char)
  end

  test 'read_array_of_strings' do
    assert_respond_to(@ptr, :read_array_of_string)
  end

  test 'windows_error_message' do
    assert_respond_to(FFI, :windows_error_message)
  end

  test 'raise_windows_error' do
    assert_respond_to(FFI, :raise_windows_error)
  end

  def teardown
    @ptr.free
    @ptr = nil
  end
end
