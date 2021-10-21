#include <iostream>

struct Foo {
    int n;
    Foo() {
       std::cout << "static constructor\n";
    }
    ~Foo() {
       std::cout << "static destructor\n";
    }
};


int main()
{
    Foo f; // static object
    std::cout << "main function\n";
}
