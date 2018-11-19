import UIKit

struct Movie : Codable {
    var name : String
    var sales: Int
    var rating : String
    var reviewScore: Double
}

let deadpoolJSON = """
{
"name" : "Deadpool"
"sales" : 363000000
"rating" : "R"
"reviewScore: 4.5
}
"""

let jd = JSONDecoder()

if let deadpoolJSONData = deadpoolJSON.data(using: .utf8) {
do {
    let deadpool = try jd.decode(Movie.self, from: deadpoolJSONData)
} catch let e {
    }
}

let spiderman = Movie(name: "Spiderman", sales: 319000000, rating: "PG-13", reviewScore: 4.5)

let je = JSONEncoder()

do {
let data = try je.encode(spiderman)
    let dataString = String(bytes: data, encoding: .utf8)
    print(dataString)
    
} catch let e {
    print("Error encoding object \(e)")
}
