import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let rootViewController = UINavigationController(rootViewController: BaseDataSourceViewController(nibName: nil, bundle: nil))
        window?.rootViewController = rootViewController

        window?.makeKeyAndVisible()

        return true
    }
}
