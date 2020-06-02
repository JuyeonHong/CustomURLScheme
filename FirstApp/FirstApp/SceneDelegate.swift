//
//  SceneDelegate.swift
//  FirstApp
//
//  Created by hongjuyeon_dev on 2020/05/26.
//  Copyright © 2020 hongjuyeon. All rights reserved.
//
// ref: https://developer.apple.com/documentation/uikit/inter-process_communication/allowing_apps_and_websites_to_link_to_your_content/defining_a_custom_url_scheme_for_your_app

import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // scene이 app에 추가될 때 호출
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        FirstAppLog("")
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        FirstAppLog("")
        
        if let context = URLContexts.first {
            let sourceApplication = context.options.sourceApplication
            let url = context.url
            let annotation = context.options.annotation
            
            FirstAppLog("source Application: \(String(describing: sourceApplication)) url: \(url) annotation: \(String(describing: annotation))")
        }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        FirstAppLog("")
    }
    
    // app switcher에서 선택되는 것처럼 scene과 상호작용이 시작될 때 호출
    func sceneDidBecomeActive(_ scene: UIScene) {
        FirstAppLog("")
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        FirstAppLog("")
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        FirstAppLog("")
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        FirstAppLog("")
    }
    
    // scene을 만들 때 구성 객체를 반환해야함
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        FirstAppLog("")
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    // 사용자가 app switcher를 통해 scene을 닫을 때 호출
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
      FirstAppLog("")
    }
    
}

