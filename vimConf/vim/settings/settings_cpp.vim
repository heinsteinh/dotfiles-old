"https://github.com/jwbat/dotfiles/blob/4fc36a3eda20ed4467b21dd863507fa2c31b80d5/.vimrc
""cpp
au BufEnter,BufNewFile,BufRead *.cpp,*.h,*.c setl filetype=cpp
augroup filetype_cpp
    autocmd!
    au FileType cpp colorscheme PaperColor
    au FileType cpp hi statusline none
    au FileType cpp nnoremap <buffer> <leader>c :norm 0i//<cr>j
    au FileType cpp nnoremap <buffer> <leader>u :norm 0xx<cr>j
    au FileType cpp nnoremap <buffer> <leader>bc O<esc>i/*<cr>*/<esc>hd0
    au FileType cpp nnoremap <buffer> <leader>[ A {<cr>}<esc>
    au FileType cpp nnoremap <buffer> <leader>; A;<esc>:w<cr>
    au FileType cpp nnoremap <buffer> <leader>rms :%s/std:://g<cr>
    au FileType cpp nnoremap <buffer> m. a-><esc>a
    au FileType cpp nnoremap <buffer> <leader><leader>y :-1read ~/.vim/.boiler.cpp<cr> 

    au FileType cpp inoreabb <buffer> doth <esc>:-1read ~/.vim/.h_starter.cpp<cr>
    au FileType cpp inoreabb <buffer> prarr <esc>:-1read ~/.vim/.print_array.cpp<cr>
    au FileType cpp inoreabb <buffer> sep <esc>:-1read ~/.vim/.separator.cpp<cr>

    au FileType cpp inoreabb <buffer> inclcr #include <coroutine><esc>
    au FileType cpp inoreabb <buffer> inclrng #include <ranges><esc>
    au FileType cpp inoreabb <buffer> inclalg #include <algorithm><esc>
    au FileType cpp inoreabb <buffer> incls #include <string><esc>
    au FileType cpp inoreabb <buffer> inclf #include <functional><esc>
    au FileType cpp inoreabb <buffer> inclio #include <iostream><esc>
    au FileType cpp inoreabb <buffer> inclsv #include <string_view><esc>
    au FileType cpp inoreabb <buffer> inclcon #include <concepts><esc>
    au FileType cpp inoreabb <buffer> inclchr #include <chrono><esc>
    au FileType cpp inoreabb <buffer> inclthr #include <thread><esc>
    au FileType cpp inoreabb <buffer> inclmem #include <memory><esc>
    au FileType cpp inoreabb <buffer> inclios #include <ios><esc>
    au FileType cpp inoreabb <buffer> inclsio #include <cstdio><esc>
    au FileType cpp inoreabb <buffer> incldef #include <cstddef><esc>
    au FileType cpp inoreabb <buffer> inclsl #include <cstdlib><esc>
    au FileType cpp inoreabb <buffer> inclfs #include <fstream><esc>
    au FileType cpp inoreabb <buffer> incliom #include <iomanip><esc>
    au FileType cpp inoreabb <buffer> inclcs #include <cstring><esc>
    au FileType cpp inoreabb <buffer> inclsig #include <csignal><esc>
    au FileType cpp inoreabb <buffer> inclt #include <ctime><esc>
    au FileType cpp inoreabb <buffer> inclct #include <cctype><esc>
    au FileType cpp inoreabb <buffer> inclm #include <cmath><esc>
    au FileType cpp inoreabb <buffer> incll #include <limits><esc>
    au FileType cpp inoreabb <buffer> inclmem #include <memory><esc>
    au FileType cpp inoreabb <buffer> incln #include <numbers><esc>
    au FileType cpp inoreabb <buffer> incla #include <array><esc>
    au FileType cpp inoreabb <buffer> inclv #include <vector><esc>
    au FileType cpp inoreabb <buffer> incldq #include <deque><esc>
    au FileType cpp inoreabb <buffer> incllst #include <list><esc>
    au FileType cpp inoreabb <buffer> inclflst #include <forward_list><esc>
    au FileType cpp inoreabb <buffer> inclu #include <utility><esc>
    au FileType cpp inoreabb <buffer> inclmap #include <map><esc>
    au FileType cpp inoreabb <buffer> inclset #include <set><esc>
    au FileType cpp inoreabb <buffer> inclq #include <queue><esc>
    au FileType cpp inoreabb <buffer> inclstk #include <stack><esc>
    au FileType cpp inoreabb <buffer> inclx #include <exception><esc>
    au FileType cpp inoreabb <buffer> inclsx #include <stdexcept><esc>
    au FileType cpp inoreabb <buffer> inclass #include <cassert><esc>
    au FileType cpp inoreabb <buffer> inclb #include <bitset><esc>
    au FileType cpp inoreabb <buffer> incltt #include <type_traits><esc>
    au FileType cpp inoreabb <buffer> inclh #include ".h"<esc>F.h
    au FileType cpp inoreabb <buffer> uns using namespace std;<esc>Fsh
    au FileType cpp inoreabb <buffer> in cin >>
    au FileType cpp inoreabb <buffer> gl getline(cin, )<esc>F,l
    au FileType cpp inoreabb <buffer> out cout <<  << "\n";<esc>Ft4l
    au FileType cpp inoreabb <buffer> onl cout << "\n";<esc>Fnh
    au FileType cpp inoreabb <buffer> ot cout << "\t";<esc>
    au FileType cpp inoreabb <buffer> sw setw(5)<esc>F5h
    au FileType cpp inoreabb <buffer> odnl cout << "\n\n";<esc>Fnh
    au FileType cpp inoreabb <buffer> ba boolalpha
    au FileType cpp inoreabb <buffer> str string
    au FileType cpp inoreabb <buffer> dbl double
    au FileType cpp inoreabb <buffer> tstr to_string()<esc>Fgl
    au FileType cpp inoreabb <buffer> im int main() {<cr>}<esc>Oreturn 0;<esc>kh
    au FileType cpp inoreabb <buffer> rtn return
    au FileType cpp inoreabb <buffer> co const
    au FileType cpp inoreabb <buffer> ce constexpr
    au FileType cpp inoreabb <buffer> ci constinit
    au FileType cpp inoreabb <buffer> cev consteval
    au FileType cpp inoreabb <buffer> fl for (size_t i{ 0 }; i < x; ++i) {<cr>}<esc>k0fx<left>
    au FileType cpp inoreabb <buffer> flj for (int j = 0; j < x; j++) {<cr>}<esc>k0fx<left>
    au FileType cpp inoreabb <buffer> pb push_back();<esc>Fkl
    au FileType cpp inoreabb <buffer> ch <<
    au FileType cpp inoreabb <buffer> hc >>
    au FileType cpp inoreabb <buffer> che << endl;<esc>
    au FileType cpp inoreabb <buffer> th this-><esc>F-
    au FileType cpp inoreabb <buffer> ppd #ifndef<cr>#define<cr><cr>#endif<esc>
    au FileType cpp inoreabb <buffer> ew err.what()<esc>
    au FileType cpp inoreabb <buffer> rerr runtime_error
    au FileType cpp inoreabb <buffer> np nullptr
    au FileType cpp inoreabb <buffer> qp unique_ptr<double><esc>Fdh
    au FileType cpp inoreabb <buffer> shp shared_ptr<int><esc>Fih
    au FileType cpp inoreabb <buffer> mq make_unique<double>();<esc>Fdh
    au FileType cpp inoreabb <buffer> msh make_shared<double>();<esc>Fdh
    au FileType cpp inoreabb <buffer> sc static_cast<>()<esc>Ftl
    au FileType cpp inoreabb <buffer> dc dynamic_cast<>()<esc>Ftl
    au FileType cpp inoreabb <buffer> pf printf("")<esc>Ffll
    au FileType cpp inoreabb <buffer> wh while () {<cr>}<esc>k02w
    au FileType cpp inoreabb <buffer> ne !=
    au FileType cpp inoreabb <buffer> sr srand(time(nullptr));<esc>0h
    au FileType cpp inoreabb <buffer> st size_t
    au FileType cpp inoreabb <buffer> pd ptrdiff_t
    au FileType cpp inoreabb <buffer> strv string_view
    au FileType cpp inoreabb <buffer> lam [](){<cr>}<esc>k0f]
    au FileType cpp inoreabb <buffer> ttt template <typename T><esc>
    au FileType cpp inoreabb <buffer> tct template <class T><esc>
    au FileType cpp inoreabb <buffer> tn typename

""    concepts
    au FileType cpp inoreabb <buffer> rq requires
    au FileType cpp inoreabb <buffer> tti is_integral_v<T>
    au FileType cpp inoreabb <buffer> ttfp is_floating_point_v<T>
    au FileType cpp inoreabb <buffer> ttf is_function_v<T>
    au FileType cpp inoreabb <buffer> ttcls is_class_v<T>
    au FileType cpp inoreabb <buffer> ttp is_pointer_v<T>
    au FileType cpp inoreabb <buffer> tta is_array_v<T>
    au FileType cpp inoreabb <buffer> ttv is_void_v<T>
    au FileType cpp inoreabb <buffer> ttc is_default_constructible_v<T>

    au FileType cpp inoreabb <buffer> thp this->
    au FileType cpp inoreabb <buffer> il initializer_list<double><esc>Fdh
    au FileType cpp inoreabb <buffer> op operator
    au FileType cpp inoreabb <buffer> df default
    au FileType cpp inoreabb <buffer> ss <=>
    au FileType cpp inoreabb <buffer> po partial_ordering
    au FileType cpp inoreabb <buffer> so string_ordering
    au FileType cpp inoreabb <buffer> wo weak_ordering
    au FileType cpp inoreabb <buffer> vr virtual
    au FileType cpp inoreabb <buffer> sa static_assert();<esc>Ftl
    au FileType cpp inoreabb <buffer> fcn function
    au FileType cpp inoreabb <buffer> prq priority_queue<int><esc>Fih
    au FileType cpp inoreabb <buffer> fe for_each(begin(), end());<esc>Fill
    au FileType cpp inoreabb <buffer> lf [] () { }<esc>6h
    au FileType cpp inoreabb <buffer> nx noexcept

""  coroutines    
    au FileType cpp inoreabb <buffer> gn generator<int><esc>Fih
    au FileType cpp inoreabb <buffer> coy co_yield
    au FileType cpp inoreabb <buffer> cor co_return
    au FileType cpp inoreabb <buffer> coa co_await



augroup END
