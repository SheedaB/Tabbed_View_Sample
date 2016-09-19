//
//  FirstViewController.swift
//  TabbedDemo2
//
//  Created by Rasheda Jacobs on 8/31/16.
//  Copyright © 2016 Rasheda Babatunde. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let myData =  [
        
        "This",
        "Is",
        "A",
        "Table View",
        ]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // From UITableViewDataSource protocol.
    func numberOfSections(in tableView: UITableView) -> Int {
        
        // We only have one section in our table view.
        return 1
    }
    
    // From UITableViewDataSource protocol.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // The number of rows we want for out table view is directly related to
        // the number of data entries we have in our data array.
        return myData.count

    }
    
    // From UITableViewDataSource protocol.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // This will try to reuse a cell if one can be found. If not, a new cell will be created.
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as UITableViewCell
        
        // Find out what index or row we're building for and use that to fetch the corresponding data.
        let row = (indexPath as NSIndexPath).row
        
        cell.textLabel?.text = myData[row]
        
        // Finally, return the cell so it can be placed into the table view.
        return cell
    }

}

