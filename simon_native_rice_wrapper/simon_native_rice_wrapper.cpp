#include "rice/Constructor.hpp"
#include "rice/Data_Type.hpp"
#include "simon.hpp"

using namespace Rice;

extern "C"
void Init_simon_native_rice_wrapper() {
    Data_Type<Simon> rb_cSimon =
        define_class<Simon>("Simon")
            .define_constructor(Constructor<Simon>())
            .define_method("says", &Simon::says);
}
