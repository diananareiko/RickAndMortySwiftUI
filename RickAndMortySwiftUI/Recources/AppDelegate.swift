import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, 
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        DependencyInjectionContainer.shared.register(APIClient(apiService: APIService()) as APIClientProtocol)
        return true
    }
}
