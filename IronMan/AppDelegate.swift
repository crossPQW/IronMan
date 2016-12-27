//
//  AppDelegate.swift
//  IronMan
//
//  Created by huangshaohua on 2016/12/26.
//  Copyright © 2016年 huangshaohua. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WeiboSDKDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        registerWeibo()
        return true
    }
    
    //register weibo
    func registerWeibo() {
        let weiboKey = "2237055324"
//        let weiboSecrect = "d87a46c16cbd2674659f022a28fa8c1b"
        WeiboSDK.registerApp(weiboKey)
        WeiboSDK.enableDebugMode(true)
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return WeiboSDK.handleOpen(url, delegate: self)
    }
    func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        return WeiboSDK.handleOpen(url, delegate: self)
    }
    
    func didReceiveWeiboRequest(_ request: WBBaseRequest!) {
        
    }
    
    func didReceiveWeiboResponse(_ response: WBBaseResponse!) {
        if let authorizeResponse = response as? WBAuthorizeResponse {
            if authorizeResponse.statusCode == WeiboSDKResponseStatusCode.success{
                print(authorizeResponse.userInfo)
            }
        }
    }
}

