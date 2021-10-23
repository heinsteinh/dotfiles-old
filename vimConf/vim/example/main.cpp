#include <iostream>
#include <cstdlib>
#include <iterator>
#include <memory>
#include <ostream>
#include <stdint.h>


#include <algorithm>

#include <iostream>


class main
{
    public:
        main (uint32_t arguments);
        virtual ~main ();

        void testFunction()
        {
            for (int i = 0; i < 2; ++i) {
                for (int i = 0; i <3; ++i) {

                    for (int i = 0; i < 3; ++i) {
                        std::cout<< "" std:}
n
                }
            }
        }

    private:
        /* data */
};



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
