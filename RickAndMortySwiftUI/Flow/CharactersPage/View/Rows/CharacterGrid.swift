import SwiftUI

struct CharacterGrid: View {

    let characters: [Character]

    var body: some View {
        Grid {
            ForEach(characters) { character in
                CharacterRow(
                    imageURL: URL(string: character.image),
                    name: character.name,
                    specie: character.species,
                    statusAndLocation: character.status)
            }
        }
    }
}
