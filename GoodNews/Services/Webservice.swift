//
//  Webservice.swift
//  GoodNews
//
//  Created by mac on 23.06.2020.
//  Copyright © 2020 Alaattin Bedir. All rights reserved.
//

import Foundation

class WebService {
  
  func getArticles(url: URL, completion: @escaping([Any]?) -> ()) {
    
    URLSession.shared.dataTask(with: url){ data, response, error in
      
      if let error = error {
        print(error.localizedDescription)
        completion(nil)
      }else if let data = data {
        print(data)
      }
      
    }.resume()
  }
}
