#include <stdio.h>
#include <stdbool.h>

#define MAX_SIZE 100 // 리스트의 최대 크기

// 리스트 구조체 정의
typedef struct {
    int data[MAX_SIZE];
    int size; // 현재 리스트에 저장된 데이터의 개수
} LinearList;

// 1. 리스트 초기화
void initList(LinearList* list) {
    list->size = 0;
}

// 2. 리스트 데이터 삽입
bool insertList(LinearList* list, int position, int value) {
    if (list->size >= MAX_SIZE || position < 0 || position > list->size) {
        return false; // 삽입 불가
    }
    // 삽입 위치 뒤의 데이터들을 한 칸씩 뒤로 이동
    for (int i = list->size - 1; i >= position; i--) {
        list->data[i + 1] = list->data[i];
    }
    list->data[position] = value;
    list->size++;
    return true;
}

// 3. 리스트 데이터 삭제
bool deleteList(LinearList* list, int position) {
    if (list->size <= 0 || position < 0 || position >= list->size) {
        return false; // 삭제 불가
    }
    // 삭제 위치 뒤의 데이터들을 한 칸씩 앞으로 이동
    for (int i = position; i < list->size - 1; i++) {
        list->data[i] = list->data[i + 1];
    }
    list->size--;
    return true;
}

// 4. 리스트 출력
void printList(LinearList* list) {
    printf("List: ");
    for (int i = 0; i < list->size; i++) {
        printf("%d ", list->data[i]);
    }
    printf("\n");
}

int main() {
    LinearList my_list;
    initList(&my_list);

    // 데이터 삽입
    insertList(&my_list, 0, 10);
    insertList(&my_list, 1, 20);
    insertList(&my_list, 1, 15); // index 1 자리에 15 삽입
    
    printList(&my_list); // 출력: 10 15 20

    // 데이터 삭제
    deleteList(&my_list, 1); // index 1 데이터(15) 삭제
    
    printList(&my_list); // 출력: 10 20

    return 0;
}
