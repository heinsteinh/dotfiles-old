#include <iostream>
#include <iterator>
#include <memory>

#include <algorithm>




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
    std::shared_ptr<Foo> mySharedFoo;
    std::unique_ptr<Foo>   uFooPtr = nullptr;

    auto nFoo = mySharedFoo->n;



    std::cout << "Testing " <<nFoo << std::endl;
    std::cout << "main function\n";


    return 0;
}
