//
//  CellTableViewController.swift
//  tableViewWithMVC
//
//  Created by Cntt36 on 7/5/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import UIKit

class CellTableViewController: UITableViewController {

    var listCell: [Work] = Work.getList()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return listCell.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCell[section].listCell.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listCell[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        let toDo = listCell[section].listCell[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListCell
        
        cell.configure(name: toDo)
        
        return cell
    }

}
