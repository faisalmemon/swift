// Faisal Memon
// Project Euler problems

// The purpose of this program is to practice using the swift language
// We aim for program clarity and high performance.

/** Return the sum of all multiples less that the supplied limit.

This algorithm uses an arithmetic progression algorithm.
    N*(N+1)/2 = 1 + 2 + 3 + ... + N (arithmetic progression)

therefore
    m * N*(N+1)/2 = m + 2m + 3m + ... + mN

Given some "limit" and some multiple "m",
    (limit - 1) / m gives the upper value we should count to
    assuming integer (rounding down) division

Combining these two ideas is the algorithm we use.

@param  limit       The limit we are count up to, but less than
@param  multiple    The multiple we are summing up
*/
func sumOfMultiples(limit:Int, multiple:Int) ->Int
{
    let geometric_N:Int = (limit - 1)/multiple
    
    let result = multiple * geometric_N * (geometric_N + 1) / 2
    
    return result
}

func eulerProblem_01()
{
    println("Problem 1\n\nIf we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.  Find the sum of all the multiples of 3 or 5 below 1000.\n")
    
    // We count multiples for 3 and 5, but exclude 3*5 multiples as they are already counted
    // in the multiples of 3
    
    let result =
        sumOfMultiples(1000,  3) +
        sumOfMultiples(1000,  5) -
        sumOfMultiples(1000, 15)
    
    println("The answer is \(result).")
}

eulerProblem_01()

