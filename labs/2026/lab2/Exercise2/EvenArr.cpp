#include <iostream>
using namespace std;

int main() {
    int arr[] = {3, 8, 5, 12, 7, 4, 10, 1};
    int n = 8;
    int count = 0;

    for (int i = 0; i < n; i++) {
        if ((arr[i] & 1) == 0) {
            count++;
        }
    }

    cout << "Even count: " << count << endl;
    return 0;
}
