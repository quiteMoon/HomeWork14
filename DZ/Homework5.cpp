#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

// Task 2
// 
//const int SIZE = 4;
//
//void printBoard(int board[][SIZE]) {
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            cout << board[i][j] << "\t";
//        }
//        cout << endl;
//    }
//}
//
//bool checkWin(int board[][SIZE]) {
//    int count = 1;
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            if (board[i][j] != count && !(i == SIZE - 1 && j == SIZE - 1)) {
//                return false;
//            }
//            count++;
//        }
//    }
//    return true;
//}
//
//void shuffleBoard(int board[][SIZE]) {
//    srand(time(0));
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            int random_i = rand() % SIZE;
//            int random_j = rand() % SIZE;
//            swap(board[i][j], board[random_i][random_j]);
//        }
//    }
//}
//
//void findEmptyTile(int board[][SIZE], int& row, int& col) {
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            if (board[i][j] == 0) {
//                row = i;
//                col = j;
//                return;
//            }
//        }
//    }
//}
//
//void move(int board[][SIZE], char direction) {
//    int row, col;
//    findEmptyTile(board, row, col);
//    if (direction == 'w' && row < SIZE - 1) {
//        swap(board[row][col], board[row + 1][col]);
//    }
//    else if (direction == 's' && row > 0) {
//        swap(board[row][col], board[row - 1][col]);
//    }
//    else if (direction == 'a' && col < SIZE - 1) {
//        swap(board[row][col], board[row][col + 1]);
//    }
//    else if (direction == 'd' && col > 0) {
//        swap(board[row][col], board[row][col - 1]);
//    }
//}
//
//int main() {
//    int board[SIZE][SIZE] = {
//        {1, 2, 3, 4},
//        {5, 6, 7, 8},
//        {9, 10, 11, 12},
//        {13, 14, 15, 0}
//    };
//
//    shuffleBoard(board); 
//
//    char moveDirection;
//    while (!checkWin(board)) {
//        printBoard(board);
//        cout << "Enter the direction of movement (w - up, s - down, a - left, d - right):";
//        cin >> moveDirection;
//        move(board, moveDirection);
//        system("cls"); 
//    }
//
//    cout << "You won!" << endl;
//
//}

// Task 3
// 
//const int SIZE = 3;
//
//void printBoard(char board[][SIZE]) {
//    cout << "    0 1 2" << endl;
//    cout << "   -------" << endl;
//    for (int i = 0; i < SIZE; ++i){
//        cout << i << " | ";
//        for (int j = 0; j < SIZE; ++j){
//            
//            cout << board[i][j] << " ";
//        }
//        cout << endl;
//    }
//}
//
//bool checkWin(char board[][SIZE], char symbol) {
//    for (int i = 0; i < SIZE; ++i) {
//        if (board[i][0] == symbol && board[i][1] == symbol && board[i][2] == symbol)
//            return true;
//        if (board[0][i] == symbol && board[1][i] == symbol && board[2][i] == symbol)
//            return true;
//    }
//
//    if (board[0][0] == symbol && board[1][1] == symbol && board[2][2] == symbol)
//        return true;
//    if (board[0][2] == symbol && board[1][1] == symbol && board[2][0] == symbol)
//        return true;
//
//    return false;
//}
//
//bool makeMove(char board[][SIZE], int row, int col, char symbol) {
//    if (row >= 0 && row < SIZE && col >= 0 && col < SIZE && board[row][col] == ' ') {
//        board[row][col] = symbol;
//        return true;
//    }
//    return false;
//}
//
//bool checkDraw(char board[][SIZE]) {
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            if (board[i][j] == ' ') {
//                return false;
//            }
//        }
//    }
//    return true; 
//}
//
//int main() {
//    char board[SIZE][SIZE];
//    for (int i = 0; i < SIZE; ++i) {
//        for (int j = 0; j < SIZE; ++j) {
//            board[i][j] = ' ';
//        }
//    }
//
//    bool xTurn = true; 
//
//    while (true) {
//        system("cls"); 
//        printBoard(board);
//
//        char currentPlayerSymbol = (xTurn) ? 'X' : 'O';
//        cout << "Player's turn " << currentPlayerSymbol << endl;
//
//        int row, col;
//        cout << "Enter a row and a column (from 0 to 2): ";
//        cin >> row >> col;
//
//        if (makeMove(board, row, col, currentPlayerSymbol)) {
//            if (checkWin(board, currentPlayerSymbol)) {
//                system("cls");
//                printBoard(board);
//                cout << "Player " << currentPlayerSymbol << " won!" << endl;
//                break;
//            }
//            else if (checkDraw(board)) {
//                system("cls"); 
//                printBoard(board);
//                cout << "Draw!" << endl;
//                break;
//            }
//            xTurn = !xTurn; 
//        }
//    }
//}

// Task 4
// 
//void copyArray(int* source, int* destination, int size) {
//    for (int i = 0; i < size; ++i) {
//        *(destination + i) = *(source + i);
//    }
//}
//
//int main() {
//    const int SIZE = 5;
//    int sourceArray[SIZE] = { 1, 2, 3, 4, 5 };
//    int destinationArray[SIZE];
//
//    copyArray(sourceArray, destinationArray, SIZE);
//
//    cout << "Copied array: ";
//    for (int i = 0; i < SIZE; ++i) {
//        cout << destinationArray[i] << " ";
//    }
//    cout << endl;
//}

// Task 5
// 
//void reverseArray(int* arr, int size) {
//    int* start = arr; 
//    int* end = arr + size - 1; 
//
//    while (start < end) {
//        int temp = *start;
//        *start = *end;
//        *end = temp;
//
//        start++;
//        end--;
//    }
//}
//
//int main() {
//    const int SIZE = 5;
//    int arr[SIZE] = { 1, 2, 3, 4, 5 };
//
//    cout << "Initial array: ";
//    for (int i = 0; i < SIZE; ++i) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//
//    reverseArray(arr, SIZE);
//
//    cout << "Array with reversed order: ";
//    for (int i = 0; i < SIZE; ++i) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//}

// Task 6
// 
//void copyReverse(int* source, int* destination, int size) {
//    int* sourcePtr = source + size - 1;
//    int* destPtr = destination; 
//
//    for (int i = 0; i < size; ++i) {
//        *destPtr = *sourcePtr; 
//        sourcePtr--;
//        destPtr++;
//    }
//}
//
//int main() {
//    const int SIZE = 5;
//    int sourceArray[SIZE] = { 1, 2, 3, 4, 5 };
//    int destinationArray[SIZE];
//
//    copyReverse(sourceArray, destinationArray, SIZE);
//
//    cout << "Initial array: ";
//    for (int i = 0; i < SIZE; ++i) {
//        cout << sourceArray[i] << " ";
//    }
//    cout << endl;
//
//    cout << "Array with reverse order: ";
//    for (int i = 0; i < SIZE; ++i) {
//        cout << destinationArray[i] << " ";
//    }
//    cout << endl;
//
//}