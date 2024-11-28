import SwiftUI

struct CharactersSection: View {

    var body: some View {
        HStack(spacing: 16) {
            Text("Charactes").font(.title2).foregroundStyle(.white)
            Capsule().fill(.hexEBFF6E).frame(height: 3)
        }.background(.clear)
    }
}

#Preview {
    CharactersSection()
}
