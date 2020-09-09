require "ffi-win32-extensions"
require "test-unit"

class TC_String_Win32_Extensions < Test::Unit::TestCase
  def setup
    @string = "foo/bar"
  end

  test "wincode" do
    assert_respond_to(@string, :wincode)
  end

  test "wstrip" do
    assert_respond_to(@string, :wstrip)
  end

  def teardown
    @string = nil
  end
end
