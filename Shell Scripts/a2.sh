#!/bin/bash

is_prime() {
    local number=$1

    if ((number <= 1)); then
        return 1
    fi

    if ((number <= 3)); then
        return 0
    fi

    if ((number % 2 == 0 || number % 3 == 0)); then
        return 1
    fi

    local i=5
    while ((i * i <= number)); do
        if ((number % i == 0 || number % (i + 2) == 0)); then
            return 1
        fi
        i+=6
    done

    return 0
}

read -p "Enter an integer: " num

if is_prime "$num"; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi
