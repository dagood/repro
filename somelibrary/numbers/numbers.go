package numbers

import (
	"fmt"
	"strings"
)

func Join(numbers []int, sep string) string {
	var s []string
	for _, n := range numbers {
		s = append(s, fmt.Sprint(n))
	}
	return strings.Join(s, sep)
}
