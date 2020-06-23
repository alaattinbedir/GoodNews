//
//  Article.swift
//  GoodNews
//
//  Created by mac on 23.06.2020.
//  Copyright © 2020 Alaattin Bedir. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
  let articles: [Article]
}

struct Article: Decodable {
  let title: String
  let description: String
}
