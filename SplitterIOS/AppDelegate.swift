//
//  AppDelegate.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 03.03.2024.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Переопределить точку настройки после запуска приложения.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Вызывается при создании нового сеанса сцены.
        // Используйте этот метод, чтобы выбрать конфигурацию для создания новой сцены.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Вызывается, когда пользователь отменяет сеанс сцены.
        // Если какие-либо сеансы были отменены, пока приложение не работало, это будет вызвано вскоре после application:didFinishLaunchingWithOptions.
        // Используйте этот метод, чтобы освободить любые ресурсы, относящиеся к отброшенным сценам, поскольку они не вернутся.
    }
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         Постоянный контейнер для приложения. Эта реализация
         создает и возвращает контейнер, загрузив хранилище для
         приложение к нему. Это свойство является необязательным, поскольку существуют законные
         ошибки, которые могут привести к сбою создания хранилища.
         */
        let container = NSPersistentContainer(name: "SplitterIOS")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Замените эту реализацию кодом для соответствующей обработки ошибки.
                // FatalError() заставляет приложение создать журнал сбоев и завершить работу. Не следует использовать эту функцию в готовом приложении, хотя она может быть полезна во время разработки.
                
                /*
                 Типичными причинами ошибки здесь являются:
                 * Родительский каталог не существует, не может быть создан или запрещает запись.
                 * Постоянное хранилище недоступно из-за разрешений или защиты данных, когда устройство заблокировано.
                 * На устройстве недостаточно места.
                 * Магазин не удалось перенести на текущую версию модели.
                 Проверьте сообщение об ошибке, чтобы определить, в чем заключалась реальная проблема.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Замените эту реализацию кодом для соответствующей обработки ошибки.
                // FatalError() заставляет приложение создать журнал сбоев и завершить работу. Не следует использовать эту функцию в готовом приложении, хотя она может быть полезна во время разработки.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}

