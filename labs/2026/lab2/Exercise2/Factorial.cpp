#include <iostream>
using namespace std;

int factorial(int n) {
    int result = 1;
    while (n > 1) {
        result *= n;
        n--;
    }
    return result;
}

int main() {
    int n = 5;
    cout << "Factorial: " << factorial(n) << endl;
    return 0;
}
