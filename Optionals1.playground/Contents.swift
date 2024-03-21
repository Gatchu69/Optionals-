import Foundation

// MARK: --- Assignment 3 Optionals ---
//9. შექმენით მთელი რიცხვის მქონე ცვლადი. თუ ეს ცვლადი იყოფა 3-ზე, დაბეჭდეთ “იყოფა 3-ზე”, თუ ეს ცვლადი იყოფა 4-ზე დაბეჭდეთ “იყოფა 4-ზე”, თუ იყოფა ორივეზე დაბეჭდეთ “იყოფა 3-ზე და 4-ზე”
var number1 = 5

if number1 % 3 == 0  && number1 % 4 == 0 {
    print("We can divide 3 and 4")
} else if number1 % 3 == 0 {
    print("we can divide on 3 ")
} else if number1 % 4 == 0 {
    print("we can divide on 4 ")
} else {
    print("\(number1) we can't divide on 3 or 4" )
}

//10. შექმენით ორი რიცხვითი ცვლადი num1, num2 და რაიმე String ტიპის ცვლადი რომელსაც ტერნარული ოპერატორის საშუალებით მიანიჭებთ “თანაბრად დაშორებულია ნულიდან” / “არ არის თანაბრად დაშორებული ნულიდან” შესაბამის მნიშვნელობას რომელსაც აკმაყოფილებს მოცემული ორი ცვლადი
var num1 = 5
var num2 = -7
var check = num2 == -num1  || num2 == num1 ? "Distance is equal" : "Distance is different "
print(check)

// MARK: --- Assignment 4 optionals ---

//შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
func bubbleSort (arr: [Int]) -> [Int] {
    var array = arr
    for _ in 0..<array.count - 1   {
        for j in 0..<array.count - 1{
            if (array[j] > array[j+1]){
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    return array
}
var array1 = [8, 4, 9, 9, 0, 2]
var array2 = [1, 0, 9, 2, 3, 7, 0, 1]
var array3 = array1 + array2
print(bubbleSort(arr: array3))


//დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ

func factorials(fact: Int){
    var multiplication = 1
    for numbers in 1...fact {
        multiplication *= numbers
    }
    print(multiplication)
}
factorials(fact: 5)


//შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.

var integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arrayInt1 = [Int]()
var arrayInt2 = [Int]()

for checking in 1...integers.count {
    if checking % 2 == 0 {
        arrayInt1.append(checking)
    } else {
        arrayInt2.append(checking)
    }
}
print(arrayInt1)
print(arrayInt2)


// MARK: --- Assignment 5 optionals ---
/* მოცემულია Dictionary სადაც წარმოდგენილია ლელა წურწუმიას სიმღერებისა და მათი ხანგრძლივობა(წმ) მონაცემები:

1. დაწერეთ ფუნქცია რომელიც გამოითვლის და დაბეჭდავს სიღერების ჯამურ ხანგრძლივობას წუთებში და წამებში
2. დაწერეთ ფუნქცია რომელიც იპოვის და დაბეჭდავს ყველაზე ხანგრძლივი და ხანმოკლე სიმღერის სახელს.
3. დაწერეთ ფუნქცია რომელიც გამოითვლის სიმღერების საშუალო ხანგრძლივობას
4. დაწერეთ ფუნქცია რომელიც შემთხვევითად ამოარჩევს სიმღერას და დაბეჭდავს მის სახელს
*/
let lelaWhatMovementIsThis: [String: Int] = [
    "ღამის სიჩუმე გაფანტე" : 235,
    "ვიხსენებ ყველაფერს თავიდან" : 219,
    "სულელი წვიმა" : 231,
    "ალალ მე" : 231,
    "იდუმალი ღამე" : 221,
    "ჩუმად ნათქვამი" : 199,
    "თეთრი ქარავანი" : 221,
    "ძველი ვერხვები" : 193
]
//1.
print(lelaWhatMovementIsThis)

var lelaTime = (lelaWhatMovementIsThis.values)
var lelaTime2 = 0
for measure in lelaTime{
    lelaTime2 += measure
}
print("Sum of seconds \(lelaTime2)")

//3.
var lelaInMinutes = lelaTime2/60

var amount = lelaTime.count

func mean(time: Int) -> Int{
    return  lelaInMinutes / amount
}
mean(time: lelaInMinutes / amount)

//4.
var songNames = lelaWhatMovementIsThis.keys
print(songNames.randomElement()!)
