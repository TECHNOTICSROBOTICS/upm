%module javaupm_th02
%include "../upm.i"

%{
    #include "th02.h"
%}

%include "th02.h"

%pragma(java) jniclasscode=%{
    static {
        try {
            System.loadLibrary("javaupm_th02");
        } catch (UnsatisfiedLinkError e) {
            System.err.println("Native code library failed to load. \n" + e);
            System.exit(1);
        }
    }
%}