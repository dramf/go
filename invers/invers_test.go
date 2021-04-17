package invers

import "testing"

func TestInvers(t *testing.T) {
	tests := []struct {
		in   bool
		want bool
	}{
		{true, false},
		{false, true},
	}
	for _, test := range tests {
		if got := Invers(test.in); got != test.want {
			t.Errorf("Invers(%t) == %t, want %t", test.in, got, test.want)
		}
	}
}
