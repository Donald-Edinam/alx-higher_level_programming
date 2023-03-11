if __name__ == "__main__":
    from calculator_1 import add, subtract, multiply, divide

    a = 10
    b = 5

    # Perform some calculations using the imported functions
    sum_result = add(a, b)
    difference_result = subtract(a, b)
    product_result = multiply(a, b)
    quotient_result = divide(a, b)

    # Print the results
    print(f"The sum of {a} and {b} is {sum_result}.")
    print(f"The difference between {a} and {b} is {difference_result}.")
    print(f"The product of {a} and {b} is {product_result}.")
    print(f"The quotient of {a} and {b} is {quotient_result}.")

