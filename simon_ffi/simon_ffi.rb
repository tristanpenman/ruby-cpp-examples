require 'ffi'

module Simon
  # Include ffi functionality as a 'mixin'
  extend FFI::Library

  # Link with libc
  ffi_lib 'c'

  # Define a function that takes a string (char *) and prints it
  attach_function :says, :puts, [ :string ], :int
end

Simon.says 'Hello'
