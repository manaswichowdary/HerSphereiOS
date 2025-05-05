import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Change "WellnessViewController" to your initial screen's storyboard ID
        let viewController = storyboard.instantiateViewController(withIdentifier: "WellnessViewController")
        
        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()
    }
}
