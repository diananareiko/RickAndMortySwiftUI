import Combine

class CharactersViewModel: ObservableObject {

    @Published var characters: [Character] = []
    @Injected var apiClient: APIClientProtocol?

    private var cancellable = Set<AnyCancellable>()
    
    func fetchCharacters() {
        apiClient?.getCharacters(page: .zero).sink { result in
            switch result {
            case .finished:
                break
            case .failure(let errr):
                print(errr.localizedDescription)
            }
        } receiveValue: { [weak self] characters in
            self?.characters = characters
        }.store(in: &cancellable)
    }
}
