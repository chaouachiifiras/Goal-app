//
//  ViewController.swift
//  GoalPost
//
//  Created by Firas CHOUACHI on 4/9/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        
        TableView.dataSource = self
        
        TableView.isHidden = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addGoalbuttonPressed(_ sender: Any) {
    }
    
    
    func numberOfSections(in TableView: UITableView)-> Int {
        return 1
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard  let cell = TableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell
        else { return UITableViewCell()
            
            
            
        }
        cell.ConfigureCell(goalDescription: "eat", goalType: .LongTerm, goalProgressAmount: 2)
        
        return cell
        
    }
    
    
}





