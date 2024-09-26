#1.Easy

// 1task
var Fruits: [String] = ["Banana" ,"Apple" ,"Strawberry" ,"Orange" ,"Avocado"]
var thirdFruit = Fruits[2]

print(thirdFruit)

// 2task

var favNumbers: Set<Int> = [10,13,21,25,7]
favNumbers.insert(9)

print(favNumbers)

// 3 task
var programmingLanguages = ["Python": 1991, "Html": 1989, "Swift": 2014]
let swiftReleaseYear = programmingLanguages["Swift"]!

print(swiftReleaseYear)  

//4task
var colours: [String] = ["Blue", "Red", "Yellow", "Purple"]
colours[1] = "Green"

print(colours)

#2.Medium

//1task
let firstset: Set = [1,2,3,4]
let secondset: Set = [3,4,5,6]
let intersectionSet = firstset.intersection(secondset)

print(intersectionSet)

//2task
var grades = ["Kaysar Kassymkhanov":75, "Serik Sapiev":80 , "Gena Golovkin":95]
grades.updateValue(100, forKey: "Kaysar Kassymkhanov")

print(grades)

//3task
let fruits1 = ["apple","orange"]
let fruits2 = ["cherry", "mango"]
let fruits = fruits1 + fruits2

print(fruits)

#3.Hard

//1task
var countries = ["Kazakhstan": 20000000 , "Kyrgyzstan":7000000 ,"Uzbekistan": 37000000 , "Poland":40000000]
countries["Georgia"] = 3700000

print(countries)

//2task
let set1: Set = ["cat" , "dog"]
let set2: Set = ["dog", "mouse"]
let union_set = set1.union(set2)
let final_set = union_set.subtracting(set2)

print(final_set)

//3task
var studentsGrades: [String: [Int]] = [
    "Sardar": [80, 85, 90],
    "Janerke": [90, 88, 85],
    "Ayazhan": [90, 92, 95]
]

if let secondGradeJanerke = studentsGrades["Janerke"]?[1] {
    print(secondGradeJanerke)

}



