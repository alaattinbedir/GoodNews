//
//  NewListtableViewController.swift
//  GoodNews
//
//  Created by mac on 23.06.2020.
//  Copyright © 2020 Alaattin Bedir. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
  
  
  private var articleListVM: ArticleListViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  private func setup() {
    self.navigationController?.navigationBar.prefersLargeTitles = true
    let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=6303bbffd0e24949b0f5c74c45dbbb0b")!
    WebService().getArticles(url: url) { articles in
      
      if let articles = articles {
        self.articleListVM = ArticleListViewModel(articles: articles)
        
        DispatchQueue.main.async {
          self.tableView.reloadData()
        }
        
      }
      
    }
    
  }
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.articleListVM.numberOfRowsInSection(section)
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
      fatalError("ArticleTableviewCell not found")
    }
    
    let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
    
    cell.titleLabel.text = articleVM.title
    cell.descriptionLabel.text = articleVM.description
    
    return cell
  }
  
  
  
  
  
  
}
