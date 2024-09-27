// 1

for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else {
        print(number)
    }
}


// 2

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}

// 3

import Foundation

func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return (kelvin - 273.15) * 9/5 + 32
}

print("Enter the temperature value:")
if let input = readLine(), let temperature = Double(input) {
    print("Enter the unit of the temperature (C for Celsius, F for Fahrenheit, K for Kelvin):")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            let fahrenheit = celsiusToFahrenheit(temperature)
            let kelvin = celsiusToKelvin(temperature)
            print("\(temperature)°C is equal to \(fahrenheit)°F and \(kelvin)K.")
            
        case "F":
            let celsius = fahrenheitToCelsius(temperature)
            let kelvin = fahrenheitToKelvin(temperature)
            print("\(temperature)°F is equal to \(celsius)°C and \(kelvin)K.")
            
        case "K":
            let celsius = kelvinToCelsius(temperature)
            let fahrenheit = kelvinToFahrenheit(temperature)
            print("\(temperature)K is equal to \(celsius)°C and \(fahrenheit)°F.")
            
        default:
            print("Invalid unit. Please enter C, F, or K.")
        }
    } else {
        print("No unit provided.")
    }
} else {
    print("Invalid temperature input.")
}

// 4

import Foundation

var shoppingList: [String] = []
func displayMenu() {
    print("""
    Shopping List Manager:
    1. Add item to the shopping list
    2. Remove item from the shopping list
    3. View current shopping list
    4. Exit
    Please enter your choice (1-4):
    """)
}

func addItem() {
    print("Enter the item to add:")
    if let item = readLine(), !item.isEmpty {
        shoppingList.append(item)
        print("'\(item)' added to the shopping list.")
    } else {
        print("Invalid item.")
    }
}

func removeItem() {
    if shoppingList.isEmpty {
        print("Shopping list is empty.")
        return
    }
    
    print("Enter the item to remove:")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("'\(item)' removed from the shopping list.")
    } else {
        print("Item not found in the shopping list.")
    }
}

func viewList() {
    if shoppingList.isEmpty {
        print("Your shopping list is empty.")
    } else {
        print("Current shopping list:")
        for (index, item) in shoppingList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

var shouldContinue = true
while shouldContinue {
    displayMenu()
    
    if let choice = readLine() {
        switch choice {
        case "1":
            addItem()
        case "2":
            removeItem()
        case "3":
            viewList()
        case "4":
            shouldContinue = false
            print("Exiting the application. Goodbye!")
        default:
            print("Invalid choice. Please enter a number between 1 and 4.")
        }
    }
}

// 5

import Foundation

func cleanSentence(_ sentence: String) -> String {
    let allowedCharacters = CharacterSet.alphanumerics.union(.whitespaces)
    return sentence.unicodeScalars.filter { allowedCharacters.contains($0) }
                                  .map { Character($0) }
                                  .joined().lowercased()
}

func countWordFrequencies(sentence: String) -> [String: Int] {
    let cleanedSentence = cleanSentence(sentence)
    let words = cleanedSentence.split(separator: " ").map { String($0) }
    
    var wordFrequency: [String: Int] = [:]
    
    for word in words {
        wordFrequency[word, default: 0] += 1
    }
    
    return wordFrequency
}

print("Enter a sentence:")
if let sentence = readLine() {
    let wordFrequencies = countWordFrequencies(sentence: sentence)
    
    print("Word frequencies:")
    for (word, count) in wordFrequencies {
        print("\(word): \(count)")
    }
} else {
    print("Invalid input.")
}

// 6

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 {
        return []
    }
    
    if n == 1 {
        return [0]
    }
    
    var sequence = [0, 1]
    
    for _ in 2..<n {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    
    return sequence
}

print("Enter the number of Fibonacci sequence elements:")
if let input = readLine(), let n = Int(input) {
    let fibonacciSequence = fibonacci(n)
    print("The first \(n) numbers of the Fibonacci sequence are:")
    print(fibonacciSequence)
} else {
    print("Invalid input. Please enter an integer.")
}

// 7

import Foundation

func calculateAverage(scores: [Int]) -> Double {
    let total = scores.reduce(0, +)
    return Double(total) / Double(scores.count)
}

func findHighestAndLowest(scores: [Int]) -> (highest: Int, lowest: Int) {
    guard let maxScore = scores.max(), let minScore = scores.min() else {
        return (0, 0)
    }
    return (maxScore, minScore)
}

var students: [String: Int] = [:]

print("Enter the number of students:")
if let input = readLine(), let numberOfStudents = Int(input), numberOfStudents > 0 {
    
    for i in 1...numberOfStudents {
        print("Enter the name of student \(i):")
        if let name = readLine(), !name.isEmpty {
            print("Enter the score of \(name):")
            if let scoreInput = readLine(), let score = Int(scoreInput), score >= 0 && score <= 100 {
                students[name] = score
            } else {
                print("Invalid score. Please enter a number between 0 and 100.")
            }
        } else {
            print("Invalid name.")
        }
    }
    
    if !students.isEmpty {
        let scores = Array(students.values)
        
        let average = calculateAverage(scores: scores)
        
        let (highestScore, lowestScore) = findHighestAndLowest(scores: scores)
        
        print("\nStudent Results:")
        for (name, score) in students {
            let status = score >= Int(average) ? "above" : "below"
            print("\(name): \(score) (\(status) average)")
        }
        
        print("\nClass Statistics:")
        print("Average Score: \(average)")
        print("Highest Score: \(highestScore)")
        print("Lowest Score: \(lowestScore)")
    } else {
        print("No student data to process.")
    }
    
} else {
    print("Invalid input. Please enter a valid number of students.")
}
