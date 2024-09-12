//1
var firstName: String = "Kaisar"
var lastName: String = "Kassymkhanov"
var age: Int = 25
let birthYear: Int = 2005
let currentYear: Int = 2024
age = currentYear - birthYear
var isStudent: Bool = true
var height: Double = 1.75

var nationality: String = "Kazakh"
var profession: String = "Project Manager"

// 2
var hobby: String = "Photography"
var numberOfHobbies: Int = 2
var favoriteNumber: Int = 5
var isHobbyCreative: Bool = true

var favoriteFood: String = "Pizza"
var favoriteColor: String = "Blue"

//3
var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am a student. I enjoy \(hobby), which is a creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). I am from \(nationality), and I work as a \(profession)."

//4
// print(lifeStory)

//Bonus
var futureGoals: String = "In the future, I want to work abroad and gain international experience. 🌍✈️"
var favoriteEmoji: String = "😄"

lifeStory += " \(futureGoals) My favorite emoji is \(favoriteEmoji)."

print(lifeStory)

// My name is Kaisar Kassymkhanov. I am 19 years old, born in 2005. I am a student. I enjoy Photography, which is a creative hobby. I have 2 hobbies in total, and my favorite number is 5. I am from Kazakh, and I work as a Project Manager. In the future, I want to work abroad and gain international experience. 🌍✈️ My favorite emoji is 😄.
