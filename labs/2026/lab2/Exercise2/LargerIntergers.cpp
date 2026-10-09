#include <iostream>
using namespace std;

int main() {
    int a = 17;
    int b = 42;

    int larger = a;
    if (a < b) {
        larger = b;
    }

    cout << "Larger: " << larger << endl;
    return 0;
}
