require 'inline'

module Simon
  inline(:C) do |builder|
    builder.add_compile_flags '-x c++', '-lstdc++'
    builder.include '<iostream>'
    builder.c_singleton '
      void says(const char * str) {
          std::cout << str << std::endl;
      }'
  end
end

Simon.says 'Hello'
