require "ffi-win32-extensions"
require "test-unit"

class TC_FFI_Win32_Extensions < Test::Unit::TestCase
  def setup
    @ptr = FFI::MemoryPointer.new(:char)
  end

  test "read_array_of_strings" do
    assert_respond_to(@ptr, :read_array_of_string)
  end

  test "windows_error_message basic functionality" do
    assert_respond_to(FFI, :windows_error_message)
    assert_kind_of(String, FFI.windows_error_message("foo"))
  end

  test "windows_error_message returns the expected value" do
    expected = "foo: The operation completed successfully."
    assert_equal(expected, FFI.windows_error_message("foo", 0))
  end

  test "raise_windows_error" do
    assert_respond_to(FFI, :raise_windows_error)
  end

  test "read_wide_string basic functionality" do
    assert_respond_to(@ptr, :read_wide_string)
    assert_kind_of(String, @ptr.read_wide_string)
  end

  test "read_wide_string has optional argument" do
    assert_nothing_raised { @ptr.read_wide_string }
    assert_nothing_raised { @ptr.read_wide_string(@ptr.size) }
  end

  def teardown
    @ptr.free
    @ptr = nil
  end
end
