package main

import "fmt"

func main() {
    limit := 4000000
    prevTerm := 1
    currentTerm := 2
    sumEvenTerms := 0

    for currentTerm <= limit {
        if currentTerm%2 == 0 {
            sumEvenTerms += currentTerm
        }

        nextTerm := prevTerm + currentTerm
        prevTerm = currentTerm
        currentTerm = nextTerm
    }

    fmt.Println(sumEvenTerms)
}
