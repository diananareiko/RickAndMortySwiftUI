import SwiftUI

struct CharactersPage: View {
    
    @StateObject private var viewModel: CharactersViewModel = CharactersViewModel()
    @State private var searchText: String = ""
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            Color.hex193840.ignoresSafeArea()
            VStack(spacing: 30) {
                LogoView()
                CharactersSection()
                if viewModel.characters.isEmpty {
                    ProgressView()
                }
                ScrollView {
                    CharacterGrid(characters: viewModel.characters)
                }.scrollIndicators(.hidden)
                    .searchable(text: $searchText)
            }
            .padding()
        }.ignoresSafeArea(edges: .bottom)
            .task {
                viewModel.fetchCharacters()
            }
    }
}

#Preview {
    CharactersPage()
}
