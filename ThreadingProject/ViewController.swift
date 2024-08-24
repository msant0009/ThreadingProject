//
//  ViewController.swift
//  ThreadingProject
//
//  Created by Mark Santoro on 8/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Threading Text"
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    
}

