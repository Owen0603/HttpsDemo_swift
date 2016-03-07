//
//  ViewController.swift
//  HttpsDemo
//
//  Created by  ldmac on 16/2/24.
//  Copyright © 2016年  ldmac. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "https://61.155.204.94:8900/enterprises/new/community/getThreadList?userId=5546e746aeae83f74b56c39b")
            .responseJSON { response in
                print(response.request)  // original URL request
                /*
                Optional(<NSMutableURLRequest: 0x13deecda0> { URL: https://61.155.204.94:8900/enterprises/new/community/getThreadList?userId=5546e746aeae83f74b56c39b })
                */
                
                
                
                print(response.response) // URL response
                /*
                Optional(<NSHTTPURLResponse: 0x13df12320> { URL: https://61.155.204.94:8900/enterprises/new/community/getThreadList?userId=5546e746aeae83f74b56c39b } { status code: 200, headers {
                Connection = "keep-alive";
                "Content-Length" = 11213;
                "Content-Type" = "application/json; charset=utf8";
                Date = "Wed, 24 Feb 2016 09:10:14 GMT";
                } })
                */
                
                
                
                print(response.data)     // server data
                /*Optional(<7b227374 61747573 223a2231 222c226d 65737361 6765223a 22e68890 e58a9f22 2c226461 7461223a 5b7b2274 6f706963 223a2220 20202020 20202022 2c226361
                */
                
                
                print(response.result)   // result of response serialization
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
                /*
                data =     (
                {
                category = A;
                "created_date" = "2015-09-16T08:46:16.120Z";
                date = "2015-09-16";
                "enterprise_name" = "";
                */
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

