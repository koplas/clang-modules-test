module;

#include <iostream>
export module vulkan:b;

export namespace b {
    void hello() {
        std::cout << "hello\n";
    }
}