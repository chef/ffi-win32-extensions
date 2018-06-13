# ffi-win32-extensions

[![Gem Version](https://badge.fury.io/rb/ffi-win32-extensions.svg)](https://badge.fury.io/rb/ffi-win32-extensions)

A Ruby library that adds some core FFI and String methods to supplement development of Ruby libraries on Windows.

## Installation

```
gem install ffi-win32-extensions
```

## Details

The following FFI::MemoryPointer methods have been added:

- read_array_of_string - For reading char** types.
- read_wide_string - Similar to read_string but for wide char* types.

The following FFI module functions have been added:

- windows_error_message - A Windows specific error string using FormatMessage.
- raise_windows_error - Raises a windows specific error using windows_error_message.

The following String instance methods have been added:

- wincode - Converts a string to UTF-16LE for use in wide char functions.
- wstrip - Like String#strip, but for wide strings.
- read_wide_string - Reads a Ruby string up to the first double null.

### Example

```ruby
require 'ffi/win32/extensions'

str = old_string.wincode rv = SomeWideFunctionW(str)

unless rv == 0
  FFI.raise_windows_error('SomeWindowsFunction', rv)
end
```

## Copyright

(C) 2016 Daniel J. Berger, All Rights Reserved

## Warranty

This package is provided "as is" and without any express or implied warranties, including, without limitation, the implied warranties of merchantability and fitness for a particular purpose.

## License

Apache 2.0

## Author

Daniel Berger
