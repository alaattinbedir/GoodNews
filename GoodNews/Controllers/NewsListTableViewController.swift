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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  private func setup() {
    self.navigationController?.navigationBar.prefersLargeTitles = true
    
  }
  
}
