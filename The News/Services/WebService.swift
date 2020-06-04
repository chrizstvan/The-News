//
//  WebService.swift
//  The News
//
//  Created by Chris Stev on 04/06/20.
//  Copyright © 2020 chrizstvan. All rights reserved.
//

import Foundation

class Webservice {
    
    func getArticle(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }                
            }
        }.resume()
    }
}
