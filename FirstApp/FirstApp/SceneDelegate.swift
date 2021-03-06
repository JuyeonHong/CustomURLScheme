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
        
        // app이 scene을 선택했는데 구동되지 않은 상태면, 실행 후 url이 이 부분으로 들어옴
        if let context = connectionOptions.urlContexts.first {
            let sourceApplication = context.options.sourceApplication ?? ""
            let url = context.url
            let scheme = url.scheme ?? ""
            let query = url.query ?? ""
            
            FirstAppLog("scheme: \(scheme)  source Application: \(sourceApplication)")
            FirstAppLog("query: \(query) url: \(url)")
        }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        FirstAppLog("")
        
        // 앱이 실행중이거나 메모리에서 중단되었을 때 url이 이 부분으로 들어옴
        if let context = URLContexts.first {
            let sourceApplication = context.options.sourceApplication ?? ""
            let url = context.url
            let scheme = url.scheme ?? ""
            let query = url.query ?? ""
            
            FirstAppLog("scheme: \(scheme)  source Application: \(sourceApplication)")
            FirstAppLog("query: \(query) url: \(url)")
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

