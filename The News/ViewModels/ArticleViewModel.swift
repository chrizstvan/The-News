//
//  ArticleViewModel.swift
//  The News
//
//  Created by Chris Stev on 04/06/20.
//  Copyright © 2020 chrizstvan. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    let articleList: [Article]
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowInSection(_ section: Int) -> Int {
        return self.articleList.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articleList[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
