module;

#include <iostream>


export module test;

export {
    void hello() {
        std::cout << "hello\n";
    }
}
