#include <iostream>
using namespace std;

int gcd(int a, int b) {
    while (b != 0) {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}

int main() {
    int x = 48;
    int y = 18;
    cout << "GCD: " << gcd(x, y) << endl;
    return 0;
}
