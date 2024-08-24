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
    
    let urlStrings = ["https://images.unsplash.com/photo-1534970028765-38ce47ef7d8d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFyZ2V8ZW58MHx8MHx8fDA%3D",
        "https://plus.unsplash.com/premium_photo-1661940781747-5b4026f9ee1f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]
    
    var data = Data()
    var tracker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let data = try! Data(contentsOf: URL(string: urlStrings[tracker])!)
        
        imageView.image = UIImage(data: data)
        
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(changeImage))
        
        
    }

    
    @objc func changeImage(){
        if tracker == 0{
            tracker += 1
        } else{
            tracker -= 1
        }
        
        data = try! Data(contentsOf: URL(string: urlStrings[tracker])!)
        imageView.image = UIImage(data: data)
        

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

