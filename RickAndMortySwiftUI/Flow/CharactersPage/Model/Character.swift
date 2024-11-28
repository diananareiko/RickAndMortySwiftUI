import Foundation

struct Character: Decodable, Identifiable {

    let id: Int
    let name: String
    let status: String
    let species: String
    let image: String
}
