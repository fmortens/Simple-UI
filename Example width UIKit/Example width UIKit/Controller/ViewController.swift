//
//  ViewController.swift
//  Example width UIKit
//
//  Created by Frank Mortensen on 10/01/2021.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var demoTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //parent?.navigationController?.navigationBar.barTintColor = UIColor.darkGray

        demoTableView.delegate = self
    }

}

// MARK: Table methods
extension ViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
            case 0:
                let cell = demoTableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
                cell.demoImageView.image = UIImage(named: "Background")
                return cell
            default: fatalError("Unknown cell type!")
        }

    }

}
