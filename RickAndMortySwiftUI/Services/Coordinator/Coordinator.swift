import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var path: NavigationPath = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    @ViewBuilder
    func build(page: AppPage) -> some View {
        switch page {
        case .charactersPage:
            CharactersPage()
        default:
            CharactersPage()
        }
    }
    
    @ViewBuilder
    func buildSheet(sheet: Sheet) -> some View {
        switch sheet {
        default:
            CharactersPage()
        }
    }
    
    @ViewBuilder
    func buildCover(cover: FullScreenCover) -> some View {
        switch cover {
        default:
            CharactersPage()
        }
    }
    
    func push(page: AppPage) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func presentSheet(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ cover: FullScreenCover) {
        self.fullScreenCover = cover
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissCover() {
        fullScreenCover = nil
    }
}
