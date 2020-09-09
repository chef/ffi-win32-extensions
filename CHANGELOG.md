<!-- usage documentation: http://expeditor-docs.es.chef.io/configuration/changelog/ -->

# ffi-win32-extensions Changelog
<!-- latest_release 1.0.4 -->
## [ffi-win32-extensions-1.0.4](https://github.com/chef/ffi-win32-extensions/tree/ffi-win32-extensions-1.0.4) (2020-09-09)

#### Merged Pull Requests
- Add style rake task [#8](https://github.com/chef/ffi-win32-extensions/pull/8) ([tas50](https://github.com/tas50))
<!-- latest_release -->
<!-- release_rollup since=1.0.3 -->
### Changes not yet released to rubygems.org

#### Merged Pull Requests
- Add style rake task [#8](https://github.com/chef/ffi-win32-extensions/pull/8) ([tas50](https://github.com/tas50)) <!-- 1.0.4 -->
<!-- release_rollup -->
<!-- latest_stable_release -->
## 1.0.3 - 21-Aug-2016

* The FFI::MemoryPointer#read_wide_string now defaults to its own size
  for the +num_bytes+ argument.
<!-- latest_stable_release -->

## 1.0.2 - 20-Jun-2016
* Added the String#read_wide_string method.
* Refactored the windows_error_message method a bit.

## 1.0.1 - 8-May-2016
* The String#wstrip method defaults to nil on failure.

## 1.0.0 - 7-May-2016
* Initial release