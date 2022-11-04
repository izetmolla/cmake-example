// #include <iostream>

// int main()
// {
//     std::cout << "Hello World!";
//     return 0;
// }

#include "crow.h"

int main()
{
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")
    ([]()
     { return "Hello world"; });

    app.port(8899).run();
}