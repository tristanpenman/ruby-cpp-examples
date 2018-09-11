require 'inline'

class Simon
  # This is using a Ruby block to build inlined functionality
  inline(:C) do |builder|
    builder.add_compile_flags '-x c++', '-lstdc++'
    builder.include '<iostream>'
    builder.c '
      void says(const char * str) {
          std::cout << str << std::endl;
      }'
  end
end

# Unlike the ffi example, Simon is a class,# so we have to instantiate it
simon = Simon.new

# Say something...
simon.says 'Hello'
