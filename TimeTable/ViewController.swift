//
//  ViewController.swift
//  TimeTable
//
//  Created by Moisés Cervantes on 21/08/15.
//  Copyright (c) 2015 Moisés Cervantes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
  
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTable * indexPath.row)
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

