<!-- usage documentation: http://expeditor-docs.es.chef.io/configuration/changelog/ -->

# ffi-win32-extensions Changelog
<!-- latest_release -->
<!-- latest_release -->
<!-- release_rollup -->
<!-- release_rollup -->
<!-- latest_stable_release -->
## [ffi-win32-extensions-1.1.0](https://github.com/chef/ffi-win32-extensions/tree/ffi-win32-extensions-1.1.0) (2025-02-14)

#### Merged Pull Requests
- Upgrade to GitHub-native Dependabot [#9](https://github.com/chef/ffi-win32-extensions/pull/9) ([dependabot-preview[bot]](https://github.com/dependabot-preview[bot]))
- Updating ffi support [#12](https://github.com/chef/ffi-win32-extensions/pull/12) ([johnmccrae](https://github.com/johnmccrae))
<!-- latest_stable_release -->

## [ffi-win32-extensions-1.0.4](https://github.com/chef/ffi-win32-extensions/tree/ffi-win32-extensions-1.0.4) (2020-09-09)

#### Merged Pull Requests
- Add style rake task [#8](https://github.com/chef/ffi-win32-extensions/pull/8) ([tas50](https://github.com/tas50))
- Move read_wstring method from chef to ffi-win32-extensions [#5](https://github.com/chef/ffi-win32-extensions/pull/5) ([kapilchouhan99](https://github.com/kapilchouhan99))
- Autocorrected the repository with Chefstyle
- Moved dev deps into a Gemfile
- Renamed CHANGES to CHANGELOG.md and converted it to markdown

## 1.0.3 - 21-Aug-2016

* The FFI::MemoryPointer#read_wide_string now defaults to its own size
  for the +num_bytes+ argument.

## 1.0.2 - 20-Jun-2016
* Added the String#read_wide_string method.
* Refactored the windows_error_message method a bit.

## 1.0.1 - 8-May-2016
* The String#wstrip method defaults to nil on failure.

## 1.0.0 - 7-May-2016
* Initial release