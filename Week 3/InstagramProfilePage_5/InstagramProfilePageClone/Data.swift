//
//  Data.swift
//  InstagramProfilePageClone
//
//  Created by Yezhisai Murugesan on 2/17/16.
//  Copyright © 2016 Isai. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

let access_token = "30523224.7dff092.6e25bfd2801243acbbbe5330b84ad604"


class Common
{
    static var username = "" as String
    
    class func getUserName() -> String
    {
        return username
    }
    
    class func setUserName(uname: String)
    {
        username = uname
    }
}


class Media
{
    
    private class func getUserMedia(request: String, completionHandler:(NSDictionary?,NSError?) -> Void)
    {
        Alamofire.request(.GET, request)
            .responseJSON {  response in
            if let error = response.result.error
            {
                completionHandler(nil,error)
            }
            else
            {
                completionHandler(response.result.value! as? NSDictionary, nil)
            }
        }
    }
    
    class func getMedia(completionHandler: (NSDictionary?,NSError?) -> Void)
    {
        let request = "https://api.instagram.com/v1/users/self/media/recent/?access_token=\(access_token)" as String
        getUserMedia(request,completionHandler: completionHandler)
    }
}