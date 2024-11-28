import SwiftUI
import SwiftData

@main
struct RickAndMortySwiftUIApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
