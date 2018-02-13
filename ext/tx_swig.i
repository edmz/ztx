%module tx_core

%include "std_string.i"
%include "std_vector.i"

namespace std {
 %template(StringVector) vector<string>;
}

%{
#include "tx_swig.h"
%}

%include "tx_swig.h"
