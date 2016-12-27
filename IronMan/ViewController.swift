//
//  ViewController.swift
//  IronMan
//
//  Created by huangshaohua on 2016/12/26.
//  Copyright © 2016年 huangshaohua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = WBAuthorizeRequest()
        request.redirectURI = "https://api.weibo.com/oauth2/default.html"
        request.scope = "all"
        request.userInfo = ["SSO_From" : "ViewController"]
        WeiboSDK.send(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

