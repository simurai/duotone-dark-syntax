package main

import "fmt"

func main() {
    sum := 0
    for v := 0; v < 10; v++ {
        sum += v
        fmt.Printf("Sum = %d and V = %d\n",sum,v)
    }
    fmt.Printf("Total Sum = %d\n",sum)
}
